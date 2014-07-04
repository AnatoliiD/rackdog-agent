module Rackdog
  module Agent
    class Reporter
      def self.exception exception
        uri = URI.parse "#{Rackdog::Agent.configuration.host}reporter"
        http = Net::HTTP.new uri.host, uri.port
        request = Net::HTTP::Post.new uri.request_uri
        request['Content-Type'] = 'application/json'
        request.set_form_data({token: Rackdog::Agent.configuration.token, exception: exception.message, backtrace: exception.backtrace.to_json})
        http.request(request)
      end
    end
  end
end
