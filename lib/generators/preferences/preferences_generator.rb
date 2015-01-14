require 'rails/generators/migration'

class PreferencesGenerator < Rails::Generators::Base
  include Rails::Generators::Migration

  def install_preferences
    migration_template "001_create_preferences.rb", "db/migrate/create_preferences"
  end

  def self.next_migration_number(path)
    Time.now.utc.strftime("%Y%m%d%H%M%S")
  end

  def self.source_root
    @_devise_source_root ||= File.expand_path("../templates", __FILE__)
  end
end
