class AddColsToClasses < ActiveRecord::Migration[6.1]
  def change
    add_column :classes, :career, :string
    add_column :classes, :units, :string
    add_column :classes, :term, :string
    add_column :classes, :campus, :string
    add_column :classes, :contact, :string
    add_column :classes, :pre_requisite, :string
    add_column :classes, :incompatible, :string
    add_column :classes, :content, :string
  end
end
