class StudentGrade < ApplicationRecord
  belongs_to :quiz
  belongs_to :user
  has_many :student_answers
end
