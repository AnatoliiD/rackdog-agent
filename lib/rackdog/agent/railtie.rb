module Rackdog
  module Agent
    class Railtie < Rails::Railtie
      initializer 'rackdog_agent.configure_rails_initialization' do
        Rails.application.middleware.use Rackdog::Agent::Middleware
      end
    end
  end
end