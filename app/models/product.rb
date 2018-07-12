class Product < ApplicationRecord
  has_and_belong_to_many :orders
  belongs_to :casino

  validates :name, presence: true
  validates :price, presence: true
end
