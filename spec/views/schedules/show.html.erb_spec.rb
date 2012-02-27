require 'spec_helper'

describe "schedules/show" do
  before(:each) do
    @schedule = assign(:schedule, stub_model(Schedule))
  end

  it "renders attributes in <p>" do
    render
  end
end
