class AddChoicesToQuestions < ActiveRecord::Migration[6.1]
  def change
    add_column :questions, :choices, :string
  end
end
