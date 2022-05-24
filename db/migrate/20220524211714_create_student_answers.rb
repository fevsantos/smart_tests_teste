class CreateStudentAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :student_answers do |t|
      t.string :option
      t.references :student_grade, null: false, foreign_key: true
      t.references :question, null: false, foreign_key: true

      t.timestamps
    end
  end
end
