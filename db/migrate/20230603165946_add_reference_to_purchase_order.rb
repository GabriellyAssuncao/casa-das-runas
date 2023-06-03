class AddReferenceToPurchaseOrder < ActiveRecord::Migration[7.0]
  def change
    add_reference :purchase_orders, :client, foreign_key: true
    
    remove_column :purchase_order_details, :product_id, :integer
    remove_column :purchase_order_details, :purchase_order_id, :integer

    add_reference :purchase_order_details, :product, foreign_key: true
    add_reference :purchase_order_details, :purchase_order, foreign_key: true
  end
end
