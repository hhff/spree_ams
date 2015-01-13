module Spree
  class VariantSerializer < ActiveModel::Serializer
    embed :ids, include: true

    attributes  :id,
                :name,
                :sku,
                :price,
                :weight,
                :height,
                :width,
                :depth,
                :is_master,
                :cost_price,
                :slug,
                :description,
                :track_inventory,
                :display_price,
                :options_text,
                :can_supply?

    has_many :images, serializer: ImageSerializer
  end
end