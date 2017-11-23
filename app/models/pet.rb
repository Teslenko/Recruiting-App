class Pet < ApplicationRecord

  mount_uploader :image, ImageUploader
  validates_presence_of :image

  validates_processing_of :image
  validate :image_size_validation

  private
  def image_size_validation
    errors[:image] << "should be less than 2 Megabites" if image.size > 2.megabytes


  end
end
