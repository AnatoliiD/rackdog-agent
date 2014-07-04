module Rackdog
  module Agent
    class Middleware
      def initialize(app)
        @app = app
      end

      def call(env)
        @app.call(env)
      rescue => exception
        Rackdog::Agent::Reporter.exception exception
        raise exception
      end
    end
  end
end
