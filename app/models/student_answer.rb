class StudentAnswer < ApplicationRecord
  belongs_to :student_grade
  belongs_to :question
end
