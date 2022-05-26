class AddReferenceToQuestions < ActiveRecord::Migration[6.1]
  def change
    add_reference :questions, :option
  end
end
