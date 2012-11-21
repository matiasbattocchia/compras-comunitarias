class CreateOrderLineProducts < ActiveRecord::Migration
  def change
    create_table :order_line_products do |t|
      t.references :order
      t.references :product
      t.integer :quantity

      t.timestamps
    end
    add_index :order_line_products, :order_id
    add_index :order_line_products, :product_id
  end
end
