class Detail < ApplicationRecord
  # validates :name, presence: true
  # validates :mobile, presence: true
  # validates :religion, presence: true
  # validates :child, presence: true
  # validates :father, presence: true
  # validates :mother, presence: true
  # validates :spouse, presence: true
  # validates :email, presence: true
  # validates :dob, presence: true
  # validates :gender, presence: true
  # validates :category, presence: true
  # validates :degree, presence: true

  has_many :mobiles
end
