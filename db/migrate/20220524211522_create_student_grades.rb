class CreateStudentGrades < ActiveRecord::Migration[6.1]
  def change
    create_table :student_grades do |t|
      t.integer :score
      t.references :test, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
