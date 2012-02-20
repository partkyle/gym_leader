require 'spec_helper'

describe "workouts/show" do
  before(:each) do
    @workout = create :workout
  end

  it "renders attributes in <p>" do
    render

    rendered.should have_content(@workout.key)
    rendered.should have_content(@workout.name)

    @workout.description.split.each do |str|
      rendered.should have_content(str)
    end
  end
end
