class Photo < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  belongs_to :home
  belongs_to :concept
  belongs_to :food
  belongs_to :rent
  belongs_to :space
  belongs_to :activity
  belongs_to :location
end
