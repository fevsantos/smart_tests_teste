class AddRolesToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :teacher_role, :boolean, default: false
    add_column :users, :student_role, :boolean, default: true
  end
end
