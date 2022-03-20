class Attendance < ApplicationRecord
  belongs_to :course
  has_many :student_attendances
  has_many :students, through: :student_attendances

  def as_json(options = {})
    {
      course_id: course_id,
      created_at: created_at,
      updated_at: updated_at,
      present_students: students.count,
      formatted_date: created_at.strftime("%d/%m/%Y")
    }
  end
end
