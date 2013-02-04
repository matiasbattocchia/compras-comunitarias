class CreateOrderItems < ActiveRecord::Migration
  def change
    create_table :order_items do |t|
      t.integer :quantity
      t.references :order
      t.references :prices

      t.timestamps
    end
    add_index :order_items, :order_id
    add_index :order_items, :prices_id
  end
end
