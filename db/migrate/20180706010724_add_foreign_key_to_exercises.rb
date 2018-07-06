class AddForeignKeyToExercises < ActiveRecord::Migration[5.2]
  def change
    add_column :exercises, :user_id, :integer
    add_column :exercises, :workout_id, :integer
  end
end
