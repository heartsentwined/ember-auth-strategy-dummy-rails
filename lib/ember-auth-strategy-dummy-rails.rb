require 'rails'
require 'ember/auth/strategy/dummy/source'
require 'ember/auth/strategy/dummy/rails/version'
require 'ember/auth/strategy/dummy/rails/engine'

module Ember
  module Auth
    module Strategy
      module Dummy
        module Rails
          class Railtie < ::Rails::Railtie
            initializer 'ember-auth.strategy.dummy.setup-vendor', :group => :all do |app|
              app.assets.append_path \
                File.expand_path('..', ::Ember::Auth::Strategy::Dummy::Source.bundled_path)
            end
          end
        end
      end
    end
  end
end
