require 'rails/railtie'

module Destroyable
  class Railtie < Rails::Railtie

    initializer 'destroyable' do |app|
      require_relative 'active_record/base'
    end
  end
end
