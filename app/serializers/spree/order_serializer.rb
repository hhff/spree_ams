module Spree
  class OrderSerializer < ActiveModel::Serializer
    embed :ids, include: true

    attributes  :id,
                :number,
                :item_total,
                :total,
                :state,
                :adjustment_total,
                :user_id,
                :completed_at,
                :ship_address_id,
                :payment_total,
                :shipping_method_id,
                :shipment_state,
                :payment_state,
                :email,
                :special_instructions,
                :created_at,
                :updated_at,
                :currency,
                :last_ip_address,
                :created_by_id,
                :shipment_total,
                :additional_tax_total,
                :promo_total,
                :channel,
                :included_tax_total,
                :item_count,
                :approver_id,
                :approved_at,
                :confirmation_delivered,
                :considered_risky,
                :guest_token,
                :checkout_steps

    def id
      object.number
    end

    has_many :shipments
    has_many :available_payment_methods, serializer: PaymentMethodSerializer, root: :payment_methods
    has_many :payments
    has_many :line_items
    has_one :bill_address, root: :addresses
    has_one :ship_address, root: :addresses

    # has_one :user
  end
end