# frozen_string_literal: true

require_relative 'lib/test_google_cloud_functions/version'

Gem::Specification.new do |spec|
  spec.required_ruby_version  = '>= 2.7'
  spec.name                   = 'test_google_cloud_functions'
  spec.version                = TestGoogleCloudFunctions::VERSION
  spec.authors                = ['David Cruwys']
  spec.email                  = ['david@ideasmen.com.au']

  spec.summary                = 'Sample GEM using the functions_framework GEM so that we can build google cloud functions'
  spec.description            = <<-TEXT
    Sample GEM using the functions_framework GEM so that we can build google cloud functions
  TEXT
  spec.homepage               = 'http://appydave.com/gems/test_google_cloud_functions'
  spec.license                = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  raise 'RubyGems 2.0 or newer is required to protect against public gem pushes.' unless spec.respond_to?(:metadata)

  # spec.metadata['allowed_push_host'] = "Set to 'http://mygemserver.com'"

  spec.metadata['homepage_uri']     = spec.homepage
  spec.metadata['source_code_uri']  = ''
  spec.metadata['changelog_uri']    = '/blob/main/CHANGELOG.md'

  # The `git ls-files -z` loads the RubyGem files that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end

  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
  # spec.extensions    = ['ext/test_google_cloud_functions/extconf.rb']

  spec.metadata = {
    'rubygems_mfa_required' => 'true'
  }

  spec.add_dependency 'k_log', '~> 0.0.0'
  # spec.add_dependency 'k_type', '~> 0.0.0'
  # spec.add_dependency 'k_util', '~> 0.0.0'
end
