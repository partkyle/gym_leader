require 'spec_helper'

describe Workout do
  it "should require a key" do
    workout = build(:workout, key: nil)

    workout.should_not be_valid
  end

  it "should require key be unique" do
    workout = create(:workout)
    other   = build(:workout, key: workout.key)

    other.should_not be_valid
  end

  it "should require a name" do
    workout = build(:workout, name: nil)

    workout.should_not be_valid
  end

  it "should require name to be unique" do
    workout = create(:workout)
    other   = build(:workout, name: workout.name)

    other.should_not be_valid
  end

  it "should not require a description" do
    workout = build(:workout, description: nil)

    workout.should be_valid
  end
end
