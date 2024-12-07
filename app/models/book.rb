class Book < ApplicationRecord
  has_many :order_products
  has_many :orders, through: :order_products
  
  validates :name, presence: true
  validates :description, presence: true
  validates :image, presence: true
  validates :stock, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :author, presence: true
end
