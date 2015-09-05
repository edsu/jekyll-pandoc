# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name        = 'jekyll-pandoc'
  s.version     = '0.1.0'
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Martin Fenner"]
  s.email       = 'mf@martinfenner.org'
  s.homepage    = 'https://github.com/mfenner/jekyll-pandoc'
  s.summary     = 'Jekyll Pandoc markdown converter'
  s.description = 'A Jekyll markdown converter that uses Pandoc (via the pandoc-ruby gem).'
  s.license     = 'MIT'

  s.required_rubygems_version = ">= 1.3.6"

  # TODO: uncomment when it is available 
  # s.add_dependency "jekyll", '>= 3.0.0'
  s.add_dependency "pandoc-ruby", "~> 0.7.5"
  s.add_development_dependency 'rake'
  s.add_development_dependency "rspec", "> 2.6"
  s.add_development_dependency "rdiscount", "> 2.1.7"

  s.files       = Dir.glob("lib/**/*.rb")
end
