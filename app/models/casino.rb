class Casino < ApplicationRecord
  has_many :products
  validates :nombre, presence: true, length: {minimum: 3}
  validates :tipocomida, presence: true
  validates :rangoprecio, presence: true,length: {maximum: 3}, format: { with: /\A[$]+\z/, message: "Solo se permite el caracter '$'"}
  validates :ubicacion, presence: true
end
