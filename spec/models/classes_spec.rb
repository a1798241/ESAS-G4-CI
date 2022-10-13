require 'rails_helper'

RSpec.describe Classes, type: :model do
  describe 'a class' do
    it 'is valid with all required inputs' do
      expect(Classes.create(class_name: 'Advanced Algorithms', class_code: 'COMP_SCI 3310', teacher_name: 'Ian Knight', description: 'something')).to be_valid
    end
    it 'is invalid without a class name' do
      expect(Classes.create(class_name: nil, class_code: "code")).to_not be_valid
    end
    it 'is invalid without a class code' do
      expect(Classes.create(class_name: "name", class_code: nil)).to_not be_valid
    end
    it 'is invalid if using duplicate class code' do
      Classes.create(class_name: "name1", class_code: "code")
      expect(Classes.create(class_name: "name2", class_code: "code")).to_not be_valid
    end
  end
end
