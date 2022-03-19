class Attendance < ApplicationRecord
  belongs_to :course
  has_many :student_attendances
  has_many :students, through: :student_attendances
end
