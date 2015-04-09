module Spree
  class ProductPropertiesSerializer < ActiveModel::Serializer
    attributes :id, :product_id, :value, :property_name, :presentation
    def presentation
      object.property.presentation
    end
  end
end