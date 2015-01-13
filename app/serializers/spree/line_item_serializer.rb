module Spree
  class LineItemSerializer < ActiveModel::Serializer
    embed :ids, include: true

    attributes  :id,
                :quantity,
                :price,
                :single_display_amount,
                :display_amount,
                :total,
                :insufficient_stock?

    has_one :variant, serializer: VariantSerializer
    has_one :order, serializer: OrderSerializer
  end
end