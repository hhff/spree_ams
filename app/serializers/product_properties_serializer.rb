class ProductPropertiesSerializer < ActiveModel::Serializer
  attributes :id, :product_id, :property_id, :value, :property_name, :presentation
  def presentation
    object.property.presentation
  end
end