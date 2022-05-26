class RemoveColumnFromQuestions < ActiveRecord::Migration[6.1]
  def change
    remove_column :questions, :option_id
  end
end
