require 'spec_helper'

describe "workouts/edit" do
  before(:each) do
    @workout = build :workout
  end

  it "renders the edit workout form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => workouts_path(@workout), :method => "post" do
      assert_select "input#workout_key", :name => "workout[key]"
      assert_select "input#workout_name", :name => "workout[name]"
      assert_select "textarea#workout_description", :name => "workout[description]"
    end
  end
end
