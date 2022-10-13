class CreateStaffs < ActiveRecord::Migration[6.1]
  def change
    create_table :staffs do |t|
      t.string :staff_id
      t.string :first_name
      t.string :last_name
      t.string :password
      t.integer :user_type
      t.string :staff_job

      t.timestamps
    end
  end
end
