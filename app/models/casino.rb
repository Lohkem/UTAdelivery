class Casino < ApplicationRecord
  validates :nombre, presence: true, length: {minimum: 5}
  validates :tipocomida, presence: true
  validates :rangoprecio, presence: true, format: { with: /\A[$]+\z/, message: "Solo se permite el caracter '$'"}
  validates :ubicacion, presence: true
end
