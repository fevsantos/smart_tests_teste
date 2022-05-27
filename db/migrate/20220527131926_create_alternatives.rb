class CreateAlternatives < ActiveRecord::Migration[6.1]
  def change
    create_table :alternatives do |t|
      t.string :name
      t.boolean :correct, default: false
      t.references :question

      t.timestamps
    end
  end
end
