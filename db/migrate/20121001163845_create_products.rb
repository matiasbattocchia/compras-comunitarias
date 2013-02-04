class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string  :description
      t.integer :quantity
      t.decimal :weight
      t.references :supplier

      t.timestamps
    end
    add_index :products, :supplier_id
  end
end
