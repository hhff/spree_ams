module Spree
  module Api
    module Ams
      class ProductsController < Spree::Api::ProductsController
        include Serializable
        include Requestable

        def product_scope
          scope = super
          if params[:taxon_id]
            taxon = Taxon.friendly.find(params[:taxon_id])
            scope = scope.joins(:classifications).where("#{Spree::Classification.table_name}.taxon_id" => taxon.self_and_descendants.pluck(:id))
          end
          scope
        end
      end
    end
  end
end