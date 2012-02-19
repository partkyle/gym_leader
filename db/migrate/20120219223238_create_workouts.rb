class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.string :key
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
