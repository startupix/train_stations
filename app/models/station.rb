class Station < ActiveRecord::Base
  mount_uploader :image, ImageUploader
end