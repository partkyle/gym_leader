require 'spec_helper'

describe "Workouts" do
  describe "workouts#index" do
    it "should show a list" do
      workouts = [create(:workout), create(:workout)]
      visit workouts_path

      # header and 2 workout rows
      page.should have_css('table tr', count: 3)
      page.should have_content(workouts.last.name)
    end
  end

  describe "workouts#new" do
    it "should show a form with all inputs" do
      visit new_workout_path

      page.should have_css('form#new_workout', count: 1)
      page.should have_field('workout_key')
      page.should have_field('workout_name')
      page.should have_field('workout_description')
    end

    it "should be able to submit the form" do
      workout = build(:workout)

      visit new_workout_path

      fill_in 'workout_key', with: workout.key
      fill_in 'workout_name', with: workout.name
      fill_in 'workout_description', with: workout.description

      click_button "Create Workout"

      page.should have_content "Workout was successfully created."

      page.should have_content workout.name
    end

    it "should show errors in the form when the validations fail" do
      workout = build(:workout, name: nil)

      visit new_workout_path

      fill_in 'workout_key', with: workout.key
      fill_in 'workout_name', with: workout.name
      fill_in 'workout_description', with: workout.description

      click_button "Create Workout"

      page.should have_css(".error #workout_name", count: 1)
      page.should have_content "can't be blank"
    end
  end

  describe "workouts#update" do
    it "should be able to update values" do
      workout = create(:workout)

      visit edit_workout_path(workout)

      workout.description = "New Description #{Time.now}"

      fill_in "workout_description", with: workout.description

      click_button "Update Workout"

      page.should have_content(workout.description)
    end
  end
end
