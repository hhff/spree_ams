module Spree
  module Api
    module Ams
      class UsersController < Spree::Api::UsersController
        include ControllerSetup

        def login
          if @user = Spree.user_class.find_for_database_authentication(login: user_params[:email])
            if @user.valid_password?(user_params[:password])
              sign_in @user
              binding.pry
              respond_with @user
            else
              render :json => {:error => "Invalid resource. Please fix errors and try again.", :errors => {:password => ["incorrect"]}}, :status => 422
            end
          else
            render :json => {:error => "Invalid resource. Please fix errors and try again.", :errors => {:email => ["not found"]}}, :status => 422
          end
        end

        private

        def object_serializer
          UserSerializer
        end
      end
    end
  end
end