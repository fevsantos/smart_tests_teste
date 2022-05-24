class StudentGrade < ApplicationRecord
  belongs_to :test
  belongs_to :user
  has_many :student_answers
end
