module Spree
  class ImageSerializer < ActiveModel::Serializer
    attributes  :id,
                :position,
                :attachment_content_type,
                :attachment_file_name,
                :type,
                :attachment_updated_at,
                :attachment_width,
                :attachment_height,
                :alt,
                :viewable_type,
                :viewable_id,
                :mini_url,
                :small_url,
                :product_url,
                :large_url

    def small_url
      process_url object.attachment.url(:small)
    end

    def product_url
      process_url object.attachment.url(:product)
    end

    def large_url
      process_url object.attachment.url(:large)
    end

    def process_url(base_url)
      if ENV['RAILS_ENV'] == "production"
        base_url
      else
        URI.join(ActionController::Base.asset_host, base_url).to_s
      end
    end

  end
end