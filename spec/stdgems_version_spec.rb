# frozen_string_literal: true

RSpec.describe StdgemsVersion do
  it 'has a version number' do
    expect(StdgemsVersion::VERSION).not_to be nil
  end
end
