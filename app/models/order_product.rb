class OrderProduct < ApplicationRecord
  belongs_to :order
  belongs_to :book
  
  validates :order_id, presence: true
  validates :book_id, presence: true
  validates :quantity, presence: true, numericality: { greater_than: 0 }
  validates :price, presence: true, numericality: { greater_than: 0 }
end