# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ember/auth/strategy/dummy/rails/version'

Gem::Specification.new do |gem|
  gem.name          = 'ember-auth-strategy-dummy-rails'
  gem.version       = Ember::Auth::Strategy::Dummy::Rails::VERSION
  gem.authors       = ['heartsentwined']
  gem.email         = ['heartsentwined.me@gmail.com']
  gem.date          = Time.now.strftime('%Y-%m-%d')
  gem.summary       = 'Ember-auth dummy strategy adapter for Rails'
  gem.description   = 'Ember-auth dummy strategy adapter for Rails'
  gem.homepage      = 'https://github.com/heartsentwined/ember-auth-strategy-dummy-rails'

  gem.add_dependency 'ember-auth-strategy-dummy-source'
  gem.add_dependency 'rails'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']

  gem.license       = 'MIT license'
end