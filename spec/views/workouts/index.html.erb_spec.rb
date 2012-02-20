require 'spec_helper'

describe "workouts/index" do
  before(:each) do
    @workouts = [create(:workout), create(:workout)]
  end

  it "renders a list of workouts" do
    render
    rendered.should have_selector("tr>td", :content => @workouts.first.key)
    rendered.should have_selector("tr>td", :content => @workouts.first.name)
  end
end
