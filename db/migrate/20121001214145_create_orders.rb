class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :feed_table
      t.decimal :weight
      t.decimal :cost
      t.decimal :crate_cost
      t.decimal :with_freight_cost
      t.decimal :price
      t.integer :bundles
      t.integer :crates
      t.string :status

      t.timestamps
    end
    add_index :orders, :feed_table_id
  end
end
