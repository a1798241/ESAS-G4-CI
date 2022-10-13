class Staff < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :staff_id, presence: true, :uniqueness => true
end

