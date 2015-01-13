module Spree
  module Api
    module Ams
      class CheckoutsController < Spree::Api::CheckoutsController
        include Serializable
        include Requestable
      end
    end
  end
end