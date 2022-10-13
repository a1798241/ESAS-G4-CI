class Student < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :student_id, presence: true, :uniqueness => true
end
