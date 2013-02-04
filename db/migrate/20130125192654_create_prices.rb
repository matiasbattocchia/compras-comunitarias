class CreatePrices < ActiveRecord::Migration
  def change
    create_table :prices do |t|
      t.references :purchase
      t.references :product
      t.decimal :provisional
      t.decimal :cost
      t.decimal :sale
      t.decimal :purchase
      t.decimal :crate
      t.boolean :preselected

      t.timestamps
    end
    add_index :prices, :purchase_id
    add_index :prices, :product_id
  end
end
