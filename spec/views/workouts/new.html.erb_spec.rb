require 'spec_helper'

describe "workouts/new" do
  before(:each) do
    assign(:workout, stub_model(Workout,
      :key => "MyString",
      :name => "MyString",
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new workout form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => workouts_path, :method => "post" do
      assert_select "input#workout_key", :name => "workout[key]"
      assert_select "input#workout_name", :name => "workout[name]"
      assert_select "textarea#workout_description", :name => "workout[description]"
    end
  end
end
