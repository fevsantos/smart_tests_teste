class Test < ApplicationRecord
  belongs_to :user
  has_many :questions
  has_many :student_grades
  validates :token, uniqueness: true
end
