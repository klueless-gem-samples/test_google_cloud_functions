# frozen_string_literal: true

RSpec.describe TestGoogleCloudFunctions do
  it 'has a version number' do
    expect(TestGoogleCloudFunctions::VERSION).not_to be nil
  end

  it 'has a standard error' do
    expect { raise TestGoogleCloudFunctions::Error, 'some message' }
      .to raise_error('some message')
  end
end
