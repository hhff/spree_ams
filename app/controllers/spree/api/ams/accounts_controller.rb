module Spree
  module Api
    module Ams
      class AccountsController < Spree::Api::AccountsController
        include Serializable
        include Requestable
        
      end
    end
  end
end
