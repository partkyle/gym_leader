require 'spec_helper'

describe "workouts/new" do
  before(:each) do
    @workout = create :workout
  end

  it "renders new workout form" do
    render

    rendered.should have_selector("form", :action => workouts_path, :method => "post") do |form|
      form.should have_selector("input#workout_key", :name => "workout[key]")
      form.should have_selector("input#workout_name", :name => "workout[name]")
      form.should have_selector("textarea#workout_description", :name => "workout[description]")
    end
  end
end
