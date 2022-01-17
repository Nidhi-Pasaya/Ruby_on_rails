class StudentProfile < ApplicationRecord
  belongs_to :Student
  mount_uploader :image, FileUploader
  validates :age,:email, :image, :mobile, presence: true
end
