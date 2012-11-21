class CreateFeedTables < ActiveRecord::Migration
  def change
    create_table :feed_tables do |t|
      t.decimal :balance
      t.string :unload_address
      t.string :sale_address
      t.time :open_time
      t.time :close_time
      t.string :modality
      t.string :other_activities
      t.references :basic_unit
      t.references :attendance

      t.timestamps
    end
    add_index :feed_tables, :basic_unit_id
    add_index :feed_tables, :attendance_id
  end
end
