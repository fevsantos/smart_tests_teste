class StudentGrade < ApplicationRecord
  belongs_to :test
  belongs_to :user
end
