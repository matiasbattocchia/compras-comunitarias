class CreateLineBundles < ActiveRecord::Migration
  def change
    create_table :line_bundles do |t|
      t.references :bundle
      t.references :order
      t.integer :quantity

      t.timestamps
    end
    add_index :line_bundles, :order_id
    add_index :line_bundles, :bundle_id
  end
end
