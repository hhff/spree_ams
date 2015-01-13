module Spree
  class ShipmentSerializer < ActiveModel::Serializer
    embed :ids, include: true

    attributes  :id,
                :tracking,
                :number,
                :cost,
                :shipped_at,
                :state,
                :order_id

    has_one :stock_location, serializer: StockLocationSerializer
    has_many :shipping_rates, serializer: ShippingRateSerializer
  end
end