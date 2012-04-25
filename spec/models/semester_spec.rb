require 'spec_helper'

describe Semester do

  it "has a valid factory" do
    FactoryGirl.create(:semester).should be_valid
  end

  it "requires a name" do
    FactoryGirl.build(:semester, name: nil).should_not be_valid
  end

  it "requires a start time" do
    FactoryGirl.build(:semester, start_time: nil).should_not be_valid
  end

  it "requires a end time" do
    FactoryGirl.build(:semester, end_time: nil).should_not be_valid
  end

  it "must have an end time after its start time" do
    FactoryGirl.build(:semester, end_time: Date.current, start_time: Date.yesterday).should_not be_valid
  end

  it "has many sections"
end
