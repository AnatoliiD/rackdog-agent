require 'rackdog/agent/version'
require 'rackdog/agent/railtie' if defined? Rails
require 'rackdog/agent/middleware'
require 'rackdog/agent/reporter'

module Rackdog
  module Agent

    class << self
      attr_accessor :configuration
    end

    def self.configure
      self.configuration ||= Configuration.new
      yield configuration
    end

    class Configuration
      attr_accessor :host, :token
      # def initialize
      #   @option = 'default_option'
      # end
    end

  end
end