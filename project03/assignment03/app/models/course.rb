class Course < ApplicationRecord
  belongs_to :department
  has_many :sections
  validates :department_id, presence: true
  validates :number, presence: true
  validates :hours, presence: true

  validates :number, format: { with: /\A[0-9]+\z/,
                                 message: "ONLY accepts a number..."}
  validates :hours, format: { with: /\A[0-9]+\z/,
                                 message: "ONLY accepts a number..."}
end
