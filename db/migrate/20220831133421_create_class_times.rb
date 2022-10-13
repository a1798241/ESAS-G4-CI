class CreateClassTimes < ActiveRecord::Migration[6.1]
  def change
    create_table :class_times do |t|
      t.string :class_code
      t.string :class_type
      t.string :start_time
      t.string :end_time
      t.string :day
      t.string :location
      t.string :class_size

      t.timestamps
    end
  end
end
