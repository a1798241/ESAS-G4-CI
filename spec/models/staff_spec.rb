require 'rails_helper'

RSpec.describe Staff, type: :model do
  describe 'a staff member' do
    it 'is valid with all required inputs' do
      expect(Staff.create(staff_id: "a1234567", first_name: "name", last_name: "name", password: "pass", user_type: "1")).to be_valid
    end
    it 'is invalid without a staff id' do
      expect(Staff.create(staff_id: nil, first_name: "name", last_name: "name", password: "pass")).to_not be_valid
    end
    it 'is invalid without a first name' do
      expect(Staff.create(staff_id: "a0000000", first_name: nil, last_name: "name", password: "pass")).to_not be_valid
    end
    it 'is invalid without a last name' do
      expect(Staff.create(staff_id: "a0000000", first_name: "name", last_name: nil, password: "pass")).to_not be_valid
    end
    it 'is invalid if using duplicate id' do
      Staff.create(staff_id: "a1234567", first_name: "name1", last_name: "name1")
      expect(Staff.create(staff_id: "a1234567", first_name: "name2", last_name: "name2")).to_not be_valid
    end
  end
end
