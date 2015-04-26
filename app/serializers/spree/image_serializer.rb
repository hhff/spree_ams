module Spree
  class ImageSerializer < BaseSerializer 
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

    def mini_url
      process_url object.attachment.url(:mini)
    end

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
      if URI.parse(base_url).host.nil? && ActionController::Base.asset_host.present?
        URI.join(ActionController::Base.asset_host, base_url).to_s
      else
        base_url
      end
    end
  end
end
