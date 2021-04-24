class Restaurant < ApplicationRecord
  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]
  has_many :reviews, dependent: :destroy
  validates :name, :address, :category, presence: true
  validates :category, inclusion: { 
    in: CATEGORIES, 
    message: "%{value} is not a valid option",
    allow_nil: false }
end
