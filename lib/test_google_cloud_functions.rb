# frozen_string_literal: true

require_relative 'test_google_cloud_functions/version'

module TestGoogleCloudFunctions
  # raise TestGoogleCloudFunctions::Error, 'Sample message'
  Error = Class.new(StandardError)

  # Your code goes here...
end

if ENV['KLUE_DEBUG']&.to_s&.downcase == 'true'
  namespace = 'TestGoogleCloudFunctions::Version'
  file_path = $LOADED_FEATURES.find { |f| f.include?('test_google_cloud_functions/version') }
  version   = TestGoogleCloudFunctions::VERSION.ljust(9)
  puts "#{namespace.ljust(35)} : #{version.ljust(9)} : #{file_path}"
end
