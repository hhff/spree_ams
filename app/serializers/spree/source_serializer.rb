module Spree
  class SourceSerializer < ActiveModel::Serializer
    embed :ids, include: true

    attributes :id,
               :cc_type,
               :last_digits,
               :year,
               :month,
               :name,
               :gateway_customer_profile_id,
               :gateway_payment_profile_id

    has_one :payment_method, serializer: PaymentMethodSerializer, root: :payment_methods

  end
end