class PurchaseOrder < ApplicationRecord
  belongs_to :client
  has_many :purchase_order_datails
  has_many :products, through: :purchase_order_datails
end
