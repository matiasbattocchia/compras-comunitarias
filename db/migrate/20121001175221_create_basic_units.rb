class CreateBasicUnits < ActiveRecord::Migration
  def change
    create_table :basic_units do |t|
      t.string :name
      t.string :commune
      t.string :neighborhood
      t.string :address

      t.timestamps
    end
  end
end
