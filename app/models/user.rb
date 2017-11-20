class User < ApplicationRecord

  # mount_uploader :avatar, AvatarUploader
  # # Include default devise modules. Others available are:
  # # :confirmable, :lockable, :timeoutable and :omniauthable
  # devise :database_authenticatable, :registerable,
  #        :recoverable, :rememberable, :trackable, :validatable
  #
  # validates_presence_of   :avatar
  # validates_integrity_of  :avatar
  # validates_processing_of :avatar
  #
  # before_save { self.email = email.downcase }
  # validates :name,  presence: true, length: { maximum: 50 }
  # VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  # validates :email, presence: true, length: { maximum: 255 },
  #           format: { with: VALID_EMAIL_REGEX },
  #           uniqueness: { case_sensitive: false }
  # has_secure_password
  # validates :password, presence: true, length: { minimum: 6 }

end
