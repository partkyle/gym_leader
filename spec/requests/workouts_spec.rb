require 'spec_helper'

describe "Workouts" do
  describe "GET /workouts" do
    it "should show a list" do
      workouts = [create(:workout), create(:workout)]
      visit workouts_path

      page.should have_content(workouts.first.name)
      page.should have_content(workouts.last.name)
    end
  end
end
