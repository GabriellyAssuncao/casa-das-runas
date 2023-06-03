class CreatePurchaseOrderDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :purchase_order_details do |t|
      t.integer :product_id
      t.integer :purchase_order_id
      t.timestamps
    end
  end
end
