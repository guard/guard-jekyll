# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require 'guard/jekyll/version'

Gem::Specification.new do |s|
  s.name        = "guard-jekyll"
  s.version     = Guard::JekyllVersion::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["David Haslem"]
  s.email       = ["therabidbanana@gmail.com"]
  s.homepage    = "http://davidhaslem.com"
  s.summary     = "Guard gem for Jekyll."
  s.description = "Guard::Jekyll automatically rebuilds websites with the Jekyll static site generator."

  s.add_dependency 'guard', '~> 2.6'
  s.add_dependency 'guard-compat', '~> 1.1'
  s.add_dependency "jekyll"
  s.add_dependency "nenv", '~> 0.1'

  s.add_development_dependency 'bundler'

  s.files        = `git ls-files`.split("\n")
  s.require_paths = ['lib']
end
