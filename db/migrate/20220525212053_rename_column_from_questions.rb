class RenameColumnFromQuestions < ActiveRecord::Migration[6.1]
  def change
    rename_column :questions, :question, :statement
  end
end
