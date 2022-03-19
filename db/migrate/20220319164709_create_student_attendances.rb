class CreateStudentAttendances < ActiveRecord::Migration[6.0]
  def change
    create_table :student_attendances do |t|
      t.references :student, null: false, foreign_key: true
      t.references :attendance, null: false, foreign_key: true
      t.boolean :attended

      t.timestamps
    end
  end
end
