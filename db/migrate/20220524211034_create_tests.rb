class CreateTests < ActiveRecord::Migration[6.1]
  def change
    create_table :tests do |t|
      t.string :name
      t.string :token
      t.time :time
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
