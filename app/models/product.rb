class Product < ApplicationRecord
  belongs_to :casino

  validates :name, presence: true
  validates :price, presence: true
end
