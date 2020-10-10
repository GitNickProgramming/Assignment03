class Student < ApplicationRecord
  has_and_belongs_to_many :sections
  validates :name, presence: true, format: { with: /\A[a-zA-Z\s]+\z/, message: "Only letters"}
  validates :identifier, presence: true, format: { with: /\A[0-9\s]+\z/, message: "Only numbers"}

end
