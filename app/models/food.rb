class Food < ApplicationRecord
  validates :name, presence: true
  validates :measurement_unit, presence: true
  validates :price, presence: true
  validates :quantity, presence: true
  validates :user_id, presence: true
  belongs_to :user
  has_many :recipe_foods
end
