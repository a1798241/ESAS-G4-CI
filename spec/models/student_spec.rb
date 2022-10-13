require 'rails_helper'

RSpec.describe Student, type: :model do
  describe 'a student' do
    it 'is valid with all required inputs' do
      expect(Student.create(student_id: "a1234567", first_name: "name", last_name: "name", password: "pass", user_type: "0")).to be_valid
    end
    it 'is invalid without a student id' do
      expect(Student.create(student_id: nil, first_name: "name", last_name: "name", password: "pass")).to_not be_valid
    end
    it 'is invalid without a first name' do
      expect(Student.create(student_id: "a0000000", first_name: nil, last_name: "name", password: "pass")).to_not be_valid
    end
    it 'is invalid without a last name' do
      expect(Student.create(student_id: "a0000000", first_name: "name", last_name: nil, password: "pass")).to_not be_valid
    end
    it 'is invalid if using duplicate id' do
      Student.create(student_id: "a1234567", first_name: "name", last_name: "name")
      expect(Student.create(student_id: "a1234567", first_name: "name", last_name: "name")).to_not be_valid
    end
  end
end
