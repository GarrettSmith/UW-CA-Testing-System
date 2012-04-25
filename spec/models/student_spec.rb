require 'spec_helper'

describe Student do
  it "has a valid factory" do
    FactoryGirl.create(:student).should be_valid
  end

  it "must belong to a user" do
    FactoryGirl.build(:student, user: nil).should_not be_valid
  end

  it "requires a student number" do
    FactoryGirl.build(:student, student_number: nil).should_not be_valid
  end

  it "has a unique student number" do
    no = 711
    FactoryGirl.create(:student, student_number: no)
    FactoryGirl.build(:student, student_number: no).should_not be_valid
  end
  
  it "has many enrolled students"

  it "has many many sections"

  it "has many student tests"

  describe "grades" do
    it "has an average mark"

  end
end
