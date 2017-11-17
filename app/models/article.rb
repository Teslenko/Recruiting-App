class Article < ApplicationRecord
  has_many :comments, dependent: :destroy
  validates :title, presence: true,
            length: { minimum: 3 }



  # mount_uploader :photo_candidate, ImageUploader
  #
  # validates_processing_of :photo_candidate
  # validate :image_size_validation
  #
  # private
  # def image_size_validation
  #   errors[:photo_candidate] << "should be less than 1000KB" if image.size > 1.megabytes
  # end

end
