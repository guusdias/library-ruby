class Order < ApplicationRecord
  belongs_to :user
  has_many :order_products
  has_many :books, through: :order_products
  
  validates :user_id, presence: true
  validates :total, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :status, presence: true
  
  STATUS_DRAFT = 'DRAFT'
  STATUS_IN_PROGRESS = 'IN_PROGRESS'
  STATUS_CANCELED = 'CANCELED'
  STATUS_DONE = 'DONE'
end
