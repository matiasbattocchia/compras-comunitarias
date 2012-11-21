class CreateAttendances < ActiveRecord::Migration
  def change
    create_table :attendances do |t|
      t.references :meeting

      t.timestamps
    end
    add_index :attendances, :meeting_id
  end
end
