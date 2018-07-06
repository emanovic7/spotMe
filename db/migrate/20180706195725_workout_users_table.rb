class WorkoutUsersTable < ActiveRecord::Migration[5.2]
  def change
    create_join_table :workouts, :users do |w|
      w.integer :workout_id
      w.integer :user_id
    end
  end
end
