class Category < ApplicationRecord
  # Validates
  validates :name, presence: true, uniqueness: true
  # validates :cover, presence: true

  # Associations
  has_many :photos, dependent: :destroy
  has_many :comments, as: :commentable, dependent: :destroy
  has_one_attached :cover
end
