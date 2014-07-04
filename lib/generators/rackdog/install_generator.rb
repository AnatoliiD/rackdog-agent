module Rackdog
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path('../../templates', __FILE__)
    desc 'Creates Rackdog initializer for your application'
    def copy_initializer
      template 'rackdog.rb', 'config/initializers/rackdog.rb'
    end
  end
end