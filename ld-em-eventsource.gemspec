# encoding: utf-8

Gem::Specification.new do |s|
  s.name             = "ld-em-eventsource"
  s.version          = "0.2.4"
  s.date             = Time.now.utc.strftime("%Y-%m-%d")
  s.homepage         = "http://github.com/launchdarkly/em-eventsource"
  s.authors          = "François de Metz"
  s.email            = "francois@2metz.fr"
  s.description      =  <<-EOF
     ld-em-eventsource is an eventmachine library to consume Server-Sent Events streaming API.
     You can find the specification here: http://dev.w3.org/html5/eventsource/
     This library was forked from https://github.com/AF83/em-eventsource
EOF
  s.summary          = "ld-em-eventsource is an eventmachine library to consume Server-Sent Events streaming API."
  s.extra_rdoc_files = %w(README.md)
  s.files            = Dir["README.md", "Gemfile", "lib/**/*.rb"]
  s.require_paths    = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.add_dependency "eventmachine", "~> 1.0"
  s.add_dependency "em-http-request", "~> 1.0"
  s.add_development_dependency "minitest", ">= 2.0"
  s.add_development_dependency "minitest-spec-context"
  s.add_development_dependency "bundler"
  s.add_development_dependency "rake"
end
