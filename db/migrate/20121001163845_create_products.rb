class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.integer :weight
      t.integer :quantity
      t.decimal :cost
      t.integer :freight_modifier
      t.integer :price_modifier

      t.timestamps
    end
  end
end
