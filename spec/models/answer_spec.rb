require 'spec_helper'

describe Answer do
  it "has a valid factory" do
    FactoryGirl.create(:answer).should be_valid
  end

  it "belongs to a student test" do
    FactoryGirl.build(:answer, student_test: nil).should_not be_valid
  end

  it  "belongs to a question"  do 
    FactoryGirl.build(:answer, question: nil).should_not be_valid
  end

  it "knows how long was spend on it" do

  end

  it "defaults to no (0) time spent on it" do
    FactoryGirl.create(:answer).time_taken.should == 0
  end

  describe "submission" do
    it "can be submitted"

    it "knows when it was submitted"

    it "knows if it was submitted"

    it "knows if it was submitted automatically"
    
  end

  describe "grades" do
    it "has an earned mark"

    it "has an earned mark of 0 or greater"

    it "knows its earned percentage"

    it "is marked if it has been assigned a valid mark"

    it "knows if it has been marked"
    
  end
end
