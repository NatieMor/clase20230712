class Order < ApplicationRecord

    has_many :orders_products
    has_many :products, through: :orders_products

    #def total_price
        # suma el precio de todos los productos asociados a la orden
        #products.sum(:price)
    #end

end
