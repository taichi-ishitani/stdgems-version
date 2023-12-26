# frozen_string_literal: true

require 'json'
require_relative 'stdgems_version/version'

module StdgemsVersion
  class << self
    def version(gem)
      matched_version = find_version(gem, bundled_gems)
      return matched_version if matched_version

      find_version(gem, default_gems)
    end

    attr_writer :ruby_version

    private

    def find_version(gem, gem_list)
      entry = gem_list['gems'].find { |e| e['gem'] == gem.to_s }
      return unless entry

      entry['versions'].inject(nil) do |matched_version, (ruby_version, gem_version)|
        if match_ruby_version?(ruby_version)
          gem_version
        else
          matched_version
        end
      end
    end

    def match_ruby_version?(version)
      if version.count('.') == 1
        Gem::Requirement.create("~> #{version}.0").satisfied_by?(ruby_version)
      else
        Gem::Requirement.create(version).satisfied_by?(ruby_version)
      end
    end

    def ruby_version
      @ruby_version ||= Gem::Version.create(RUBY_VERSION)
    end

    def bundled_gems
      @bundled_gems ||= load_json('bundled_gems.json')
    end

    def default_gems
      @default_gems ||= load_json('default_gems.json')
    end

    STDGEMS_DIR = File.expand_path('../stdgems', __dir__)

    def load_json(file)
      json = File.read(File.join(STDGEMS_DIR, file))
      JSON.parse(json)
    end
  end
end
