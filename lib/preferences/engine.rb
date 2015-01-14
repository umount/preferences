require 'preferences'
require 'rails'

module Preferences
  class Engine < ::Rails::Engine
    config.preferences = Preferences
  end
end
