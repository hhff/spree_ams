module Spree
  module Api
    module Ams
      class AccountViewableVariantsController < Spree::Api::AccountViewableVariantsController
        include Serializable
        include Requestable

      end
    end
  end
end
