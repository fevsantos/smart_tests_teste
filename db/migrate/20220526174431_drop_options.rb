class DropOptions < ActiveRecord::Migration[6.1]
  def change
    drop_table :options
  end
end
