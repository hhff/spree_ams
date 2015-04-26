module Spree
  class PaymentMethodSerializer < BaseSerializer
    attributes :id,
               :name,
               :description,
               :method_type
  end
end
