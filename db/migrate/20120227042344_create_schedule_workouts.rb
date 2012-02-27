class CreateScheduleWorkouts < ActiveRecord::Migration
  def change
    create_table :schedule_workouts do |t|
      t.integer :schedule_id
      t.integer :workout_id

      t.timestamps
    end

    add_index :schedule_workouts, :schedule_id
    add_index :schedule_workouts, :workout_id
  end
end
