module Spree
  module Api
    module Ams
      class ProductsController < Spree::Api::ProductsController
        include Serializable
        include Requestable

        def product_scope
          scope = super
          if params[:taxon_id]
            scope = scope.joins(:taxons).where("#{Spree::Classification.table_name}.taxon_id IN (#{params[:taxon_id]})")
          end
          scope
        end

      end
    end
  end
end
