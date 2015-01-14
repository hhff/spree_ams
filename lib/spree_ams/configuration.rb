require "singleton"

module Spree
  module Api
    module Ams
      class Configuration
        include Singleton

        cattr_accessor :cors_whitelist
        @@cors_whitelist = "http://localhost:4200"

      end

      mattr_accessor :configuration
      @@configuration = Configuration

      def self.setup
        yield @@configuration
      end

    end
  end
end