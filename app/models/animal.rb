class Animal < ApplicationRecord
  belongs_to :user
  has_many_attached :photos
  SPECIES = %w[lapin vegan escargot lama]
  validates :specie, inclusion: { in: SPECIES }
  validates :specie, presence: true
  validates :name, presence: true
  validates :description, presence: true
  validates :price_per_day, presence: true
  # validates :image_url, presence: true
end
