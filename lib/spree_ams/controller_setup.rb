module Spree
  module Api
    module Ams
      module ControllerSetup

        private

        def respond_with(object=nil, rabl_template=nil, status=nil)

          unless defined? object_serializer
            render json: { error: 'No object serializer defined for this controller.' }, :status => 422
            return
          end

          if object.respond_to? :each
            render json: object, each_serializer: object_serializer
          else
            render json: object, serializer: object_serializer
          end

        end

      end
    end
  end
end