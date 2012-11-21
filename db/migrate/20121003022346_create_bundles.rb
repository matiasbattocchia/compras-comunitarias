class CreateBundles < ActiveRecord::Migration
  def change
    create_table :bundles do |t|
      t.string :product
      t.integer :size
      t.decimal :weight
      t.decimal :cost
      t.decimal :crate_cost
      t.decimal :with_freight_cost
      t.decimal :price
      t.string :status

      t.timestamps
    end
  end
end
