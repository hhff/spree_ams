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
    object.attachment.url(:small)
  end

  def product_url
    object.attachment.url(:product)
  end

  def large_url
    object.attachment.url(:large)
  end
end