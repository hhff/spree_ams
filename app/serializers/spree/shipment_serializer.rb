module Spree
  class ShipmentSerializer < BaseSerializer 
    attributes  :id,
                :tracking,
                :number,
                :cost,
                :shipped_at,
                :state,
                :selected_shipping_rate_id

    has_one :stock_location
    has_many :shipping_rates
    has_many :line_items
  end
end
