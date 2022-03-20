class Course < ApplicationRecord
  has_many :student_courses
  has_many :students, through: :student_courses
  has_many :attendances

  def as_json(options = {})
    {
      id: id,
      name: name,
      created_at: created_at,
      updated_at: updated_at,
      students: students,
      attendances: attendances
    }
  end
end
