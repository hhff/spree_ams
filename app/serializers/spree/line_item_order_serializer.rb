module Spree
  class LineItemOrderSerializer < OrderSerializer
    has_many :line_items, include: false
  end
end