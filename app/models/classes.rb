class Classes < ApplicationRecord
  has_rich_text :content
  has_many :versions, as: :item, dependent: :destroy

  validates :class_name, presence: true
  validates :class_code, presence: true, :uniqueness => true
end

