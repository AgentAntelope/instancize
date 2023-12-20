# frozen_string_literal: true

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'instancize/version'

Gem::Specification.new do |s|
  s.name        = 'instancize'
  s.version     = Instancize::VERSION
  s.summary     = 'Turn your local variables into instance variables!'
  s.authors     = ['Fell Sunderland']
  s.files       = ['lib/instancize.rb']
  s.homepage    =
    'https://rubygems.org/gems/instancize'
  s.license     = 'MIT'
  s.required_ruby_version = '>= 2.0.0'
end
