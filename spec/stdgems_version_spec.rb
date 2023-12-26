# frozen_string_literal: true

RSpec.describe StdgemsVersion do
  it 'has a version number' do
    expect(StdgemsVersion::VERSION).not_to be nil
  end

  describe '.version' do
    it 'should return version of the given default/bundled gem installed on the executing ruby' do
      stub_const('RUBY_VERSION', '3.3.0')
      expect(StdgemsVersion.version('csv')).to eq '3.2.8'
      expect(StdgemsVersion.version('debug')).to eq '1.9.0'
      expect(StdgemsVersion.version('did_you_mean')).to eq '1.6.3'
      expect(StdgemsVersion.version('prism')).to eq '0.19.0'
      expect(StdgemsVersion.version('rexml')).to eq '3.2.6'

      StdgemsVersion.ruby_version = nil
      stub_const('RUBY_VERSION', '3.2.2')
      expect(StdgemsVersion.version('csv')).to eq '3.2.6'
      expect(StdgemsVersion.version('debug')).to eq '1.7.1'
      expect(StdgemsVersion.version('did_you_mean')).to eq '1.6.3'
      expect(StdgemsVersion.version('prism')).to be_nil
      expect(StdgemsVersion.version('rexml')).to eq '3.2.5'

      StdgemsVersion.ruby_version = nil
      stub_const('RUBY_VERSION', '3.2.1')
      expect(StdgemsVersion.version('csv')).to eq '3.2.6'
      expect(StdgemsVersion.version('debug')).to eq '1.7.1'
      expect(StdgemsVersion.version('did_you_mean')).to eq '1.6.3'
      expect(StdgemsVersion.version('prism')).to be_nil
      expect(StdgemsVersion.version('rexml')).to eq '3.2.5'

      StdgemsVersion.ruby_version = nil
      stub_const('RUBY_VERSION', '3.2.0')
      expect(StdgemsVersion.version('csv')).to eq '3.2.6'
      expect(StdgemsVersion.version('debug')).to eq '1.7.1'
      expect(StdgemsVersion.version('did_you_mean')).to eq '1.6.3'
      expect(StdgemsVersion.version('prism')).to be_nil
      expect(StdgemsVersion.version('rexml')).to eq '3.2.5'

      StdgemsVersion.ruby_version = nil
      stub_const('RUBY_VERSION', '3.1.4')
      expect(StdgemsVersion.version('csv')).to eq '3.2.5'
      expect(StdgemsVersion.version('debug')).to eq '1.6.3'
      expect(StdgemsVersion.version('did_you_mean')).to eq '1.6.1'
      expect(StdgemsVersion.version('prism')).to be_nil
      expect(StdgemsVersion.version('rexml')).to eq '3.2.5'

      StdgemsVersion.ruby_version = nil
      stub_const('RUBY_VERSION', '3.1.3')
      expect(StdgemsVersion.version('csv')).to eq '3.2.5'
      expect(StdgemsVersion.version('debug')).to eq '1.6.3'
      expect(StdgemsVersion.version('did_you_mean')).to eq '1.6.1'
      expect(StdgemsVersion.version('prism')).to be_nil
      expect(StdgemsVersion.version('rexml')).to eq '3.2.5'

      StdgemsVersion.ruby_version = nil
      stub_const('RUBY_VERSION', '3.1.2')
      expect(StdgemsVersion.version('csv')).to eq '3.2.2'
      expect(StdgemsVersion.version('debug')).to eq '1.4.0'
      expect(StdgemsVersion.version('did_you_mean')).to eq '1.6.1'
      expect(StdgemsVersion.version('prism')).to be_nil
      expect(StdgemsVersion.version('rexml')).to eq '3.2.5'

      StdgemsVersion.ruby_version = nil
      stub_const('RUBY_VERSION', '3.1.1')
      expect(StdgemsVersion.version('csv')).to eq '3.2.2'
      expect(StdgemsVersion.version('debug')).to eq '1.4.0'
      expect(StdgemsVersion.version('did_you_mean')).to eq '1.6.1'
      expect(StdgemsVersion.version('prism')).to be_nil
      expect(StdgemsVersion.version('rexml')).to eq '3.2.5'

      StdgemsVersion.ruby_version = nil
      stub_const('RUBY_VERSION', '3.1.0')
      expect(StdgemsVersion.version('csv')).to eq '3.2.2'
      expect(StdgemsVersion.version('debug')).to eq '1.4.0'
      expect(StdgemsVersion.version('did_you_mean')).to eq '1.6.1'
      expect(StdgemsVersion.version('prism')).to be_nil
      expect(StdgemsVersion.version('rexml')).to eq '3.2.5'

      StdgemsVersion.ruby_version = nil
      stub_const('RUBY_VERSION', '3.0.6')
      expect(StdgemsVersion.version('csv')).to eq '3.1.9'
      expect(StdgemsVersion.version('debug')).to eq '0.2.1'
      expect(StdgemsVersion.version('did_you_mean')).to eq '1.5.0'
      expect(StdgemsVersion.version('prism')).to be_nil
      expect(StdgemsVersion.version('rexml')).to eq '3.2.5'

      StdgemsVersion.ruby_version = nil
      stub_const('RUBY_VERSION', '3.0.5')
      expect(StdgemsVersion.version('csv')).to eq '3.1.9'
      expect(StdgemsVersion.version('debug')).to eq '0.2.1'
      expect(StdgemsVersion.version('did_you_mean')).to eq '1.5.0'
      expect(StdgemsVersion.version('prism')).to be_nil
      expect(StdgemsVersion.version('rexml')).to eq '3.2.5'

      StdgemsVersion.ruby_version = nil
      stub_const('RUBY_VERSION', '3.0.4')
      expect(StdgemsVersion.version('csv')).to eq '3.1.9'
      expect(StdgemsVersion.version('debug')).to eq '0.2.1'
      expect(StdgemsVersion.version('did_you_mean')).to eq '1.5.0'
      expect(StdgemsVersion.version('prism')).to be_nil
      expect(StdgemsVersion.version('rexml')).to eq '3.2.5'

      StdgemsVersion.ruby_version = nil
      stub_const('RUBY_VERSION', '3.0.3')
      expect(StdgemsVersion.version('csv')).to eq '3.1.9'
      expect(StdgemsVersion.version('debug')).to eq '0.2.1'
      expect(StdgemsVersion.version('did_you_mean')).to eq '1.5.0'
      expect(StdgemsVersion.version('prism')).to be_nil
      expect(StdgemsVersion.version('rexml')).to eq '3.2.5'

      StdgemsVersion.ruby_version = nil
      stub_const('RUBY_VERSION', '3.0.2')
      expect(StdgemsVersion.version('csv')).to eq '3.1.9'
      expect(StdgemsVersion.version('debug')).to eq '0.1.0'
      expect(StdgemsVersion.version('did_you_mean')).to eq '1.5.0'
      expect(StdgemsVersion.version('prism')).to be_nil
      expect(StdgemsVersion.version('rexml')).to eq '3.2.5'

      StdgemsVersion.ruby_version = nil
      stub_const('RUBY_VERSION', '3.0.1')
      expect(StdgemsVersion.version('csv')).to eq '3.1.9'
      expect(StdgemsVersion.version('debug')).to eq '0.1.0'
      expect(StdgemsVersion.version('did_you_mean')).to eq '1.5.0'
      expect(StdgemsVersion.version('prism')).to be_nil
      expect(StdgemsVersion.version('rexml')).to eq '3.2.5'

      StdgemsVersion.ruby_version = nil
      stub_const('RUBY_VERSION', '3.0.0')
      expect(StdgemsVersion.version('csv')).to eq '3.1.9'
      expect(StdgemsVersion.version('debug')).to eq '0.1.0'
      expect(StdgemsVersion.version('did_you_mean')).to eq '1.5.0'
      expect(StdgemsVersion.version('prism')).to be_nil
      expect(StdgemsVersion.version('rexml')).to eq '3.2.4'
    end
  end
end
