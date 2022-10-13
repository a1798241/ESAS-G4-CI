class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :student_id
      t.string :first_name
      t.string :last_name
      t.string :password
      t.integer :user_type

      t.timestamps
    end
  end
end
