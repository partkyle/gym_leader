require 'spec_helper'

describe "schedules/index" do
  before(:each) do
    assign(:schedules, [
      stub_model(Schedule),
      stub_model(Schedule)
    ])
  end

  it "renders a list of schedules" do
    render
  end
end
