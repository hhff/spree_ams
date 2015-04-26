module Spree
  module Api
    module Ams
      class CheckoutsController < Spree::Api::V1::CheckoutsController
        include Serializable
        include Requestable
      end
    end
  end
end
