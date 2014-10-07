require 'spec_helper'
require 'rspec_api_documentation/dsl'

resource "Products" do
  header "Accept", "application/json"

  get "api/ams/products" do

    example "index" do
      do_request
      response_status.should == 401
    end

  end
end