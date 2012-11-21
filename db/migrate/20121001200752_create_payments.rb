class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.decimal :amount
      t.references :feed_table

      t.timestamps
    end
    add_index :payments, :feed_table_id
  end
end
