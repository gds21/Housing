class Image < ApplicationRecord
  mount_uploader :url, ImageUploader

  def as_json(options)
    self.url
  end
end
