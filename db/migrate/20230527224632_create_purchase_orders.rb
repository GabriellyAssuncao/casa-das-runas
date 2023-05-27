class CreatePurchaseOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :purchase_orders do |t|
      t.date :order_date
      t.float :total_amount
      t.timestamps
    end
  end
end
