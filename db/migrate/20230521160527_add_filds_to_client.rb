class AddFildsToClient < ActiveRecord::Migration[7.0]
  def change
    add_column :clients, :open_balance, :decimal, precision: 8, scale: 2
    add_column :clients, :password, :string

    # add_column :users, :name, :string
    # add_column :users, :email, :string
    # add_column :users, :password, :string
  end
end
