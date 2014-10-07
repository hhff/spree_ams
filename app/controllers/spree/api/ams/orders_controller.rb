module Spree
  module Api
    module Ams
      class OrdersController < Spree::Api::OrdersController
        include Serializable
        include Spree::Core::ControllerHelpers

        # We have to override this because there's a bug in 2.2 Stable
        def update
          find_order(true)
          authorize! :update, @order, order_token
          # Parsing line items through as an update_attributes call in the API will result in
          # many line items for the same variant_id being created. We must be smarter about this,
          # hence the use of the update_line_items method, defined within order_decorator.rb.
          if @order.update_attributes order_params.except("line_items_attributes")

            deal_with_line_items if order_params["line_items_attributes"]

            @order.line_items.reload
            @order.update!
            respond_with(@order, default_template: :show)
          else
            invalid_resource!(@order)
          end
        end

        private

        # This is adapted to work nicely with packed up
        # Embedded JSON Records
        def deal_with_line_items
          line_items_attributes = order_params["line_items_attributes"]
          return if line_items_attributes.blank?

          line_items_attributes.each do |attributes|
            # Slice to permitted for Strong Params
            attributes = attributes.slice(*permitted_line_item_attributes).to_hash

            if attributes["id"].present?
              @order.line_items.find(attributes["id"]).update_attributes!(attributes)
            else
              @order.line_items.create!(attributes)
            end
          end
          @order.ensure_updated_shipments
        end

        def object_serializer
          OrderSerializer
        end

      end
    end
  end
end