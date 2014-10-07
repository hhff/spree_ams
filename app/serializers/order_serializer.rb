class OrderSerializer < ActiveModel::Serializer
  embed :ids, include: true

  attributes  :id,
              :number,
              :item_total,
              :total,
              :ship_total,
              :state,
              :adjustment_total,
              :created_at,
              :updated_at,
              :completed_at,
              :payment_total,
              :shipment_state,
              :payment_state,
              :email,
              :special_instructions,
              :channel,
              :included_tax_total,
              :additional_tax_total,
              :display_included_tax_total,
              :display_additional_tax_total,
              :currency,
              :display_item_total,
              # :total_quantity,
              :display_total,
              :display_ship_total,
              :display_tax_total,
              :token,
              :checkout_steps


  def id
    object.number
  end

  has_many :line_items, serializer: LineItemSerializer

  # has_one :user
end