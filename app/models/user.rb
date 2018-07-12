class User < ApplicationRecord
  has_many :order
  enum role: { admin:-1, customer: 0, deliverer: 1 }
  has_secure_password
  validates :password, presence: true, length: { minimum: 3 }
end
