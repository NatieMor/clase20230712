class Product < ApplicationRecord
  has_and_belongs_to_many :categories

  has_many :orders_products
  has_many :orders, through: :orders_products
end
