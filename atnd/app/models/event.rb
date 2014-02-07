class Event < ActiveRecord::Base
  validates :title, presence: true
  validates :date, presence: true
  validates :place, presence: true

  mount_uploader :image, ImageUploader
  
end
