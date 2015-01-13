require 'spec_helper'
require 'rspec_api_documentation/dsl'

resource "Products" do

  # Seed Product
  let!(:product)          { create(:product) }
  let!(:inactive_product) { create(:product, available_on: Time.now.tomorrow, name: "inactive") }
  let(:base_attributes)   { Api::ApiHelpers.product_attributes }
  let(:show_attributes)   { base_attributes.dup.push(:has_variants) }
  let(:new_attributes)    { base_attributes }

  let(:product_data) do
    { name: "The Other Product",
      price: 19.99,
      shipping_category_id: create(:shipping_category).id }
  end

  let(:attributes_for_variant) do
    h = attributes_for(:variant).except(:option_values, :product)
    h.merge({
      options: [
        { name: "size", value: "small" },
        { name: "color", value: "black" }
      ]
    })
  end

  header "Accept", "application/json"
  header "Content-Type", "application/json"

  get "api/ams/products" do
    example "index" do
      do_request
      expect(response_status).to equal(200)
    end

  end
end