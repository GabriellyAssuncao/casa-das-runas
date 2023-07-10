class Product 
  has_many :purchase_order_datails
  has_many :purchase_orders, through: :purchase_order_datails
end
