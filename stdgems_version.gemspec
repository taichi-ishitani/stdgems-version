# frozen_string_literal: true

require_relative 'lib/stdgems_version/version'

Gem::Specification.new do |spec|
  spec.name = 'stdgems_version'
  spec.version = StdgemsVersion::VERSION
  spec.authors = ['Taichi Ishitani']
  spec.email = ["taichi730@gmail.com"]

  spec.summary = 'Lookup version of default gem/bundled gem'
  spec.description = spec.summary
  spec.homepage = 'https://github.com/taichi-ishitani/stdgems-version'
  spec.license = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 3.0')

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = spec.homepage
  spec.metadata['rubygems_mfa_required'] = 'true'

  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z lib LICENSE.txt *.md`.split("\x0")
  end

  spec.require_paths = ['lib']
end
