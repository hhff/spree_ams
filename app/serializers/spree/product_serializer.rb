module Spree
  class ProductSerializer < BaseSerializer 
    attributes :id, :name, :description, :price, :display_price, :slug
    has_many :product_properties, serializer: ProductPropertiesSerializer
    has_many :images, serializer: ImageSerializer
    has_many :variants_including_master, root: :variants, serializer: VariantSerializer
  end
end
