class CreateClasses < ActiveRecord::Migration[6.1]
  def change
    create_table :classes do |t|
      t.string :class_name
      t.string :class_code
      t.string :teacher_name
      t.string :description

      t.timestamps
    end
  end
end
