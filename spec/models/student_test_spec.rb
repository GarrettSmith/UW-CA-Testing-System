require 'spec_helper'

describe StudentTest do
  it "has a valid factory" do
    FactoryGirl.create(:student_test).should be_valid
  end

  it "belongs to an enrolled student" do 
    FactoryGirl.build(:student_test, enrolled_student: nil).should_not be_valid
  end

  it "belongs to a section test" do
    FactoryGirl.build(:student_test, section_test: nil).should_not be_valid
  end

  describe "time" do
    it "has a time started"

    it "knows if it has been started"

    it "has a time submitted"

    it "knows if it has been submitted"

    it "is submitted if automatically if the end time has been passed"

    it "knows if it was submitted automatically"

    it "is active if it has been started and not submitted"

    it "knows how long it is/was active for"

  end

  it "has many answers"

  it "knows how many of its answers have been submitted"

  it "knows if all of its answers have been submitted"

  describe "grades" do
    it "has an earned mark"

    it "has an earned percentage"

    it "knows how many of its answers have been marked"

    it "knows if all of its answers have been marked"
    
  end

end
