class FoodItem < ApplicationRecord
  belongs_to :section

  validates :name, :price, presence: true
end
