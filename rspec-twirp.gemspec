package_name = File.basename(__FILE__).split(".")[0]
load Dir.glob("lib/**/version.rb")[0]

package = RSpec::Twirp


Gem::Specification.new do |s|
  s.name        = package_name
  s.version     = package.const_get "VERSION"
  s.authors     = ["Daniel Pepper"]
  s.summary     = package.to_s
  s.description = "..."
  s.homepage    = "https://github.com/dpep/#{package_name}_rb"
  s.license     = "MIT"

  s.files       = Dir.glob("lib/**/*")
  s.test_files  = Dir.glob("spec/**/*_spec.rb")

  s.add_dependency "google-protobuf", ">= 3"
  s.add_dependency "rspec", ">= 3"
  s.add_dependency "twirp", ">= 1"

  s.add_development_dependency "byebug"
  s.add_development_dependency "codecov"
  s.add_development_dependency "simplecov"
end
