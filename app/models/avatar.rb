# class Avatar < ApplicationRecord
#   mount_uploader :body, AvatarUploader
#   belongs_to :user
#
#   validates :body, file_size: { less_than: 3.megabytes },
#             file_content_type: { allow: ['image/jpg', 'image/jpeg', 'image/png', 'image/gif'] }
# end
