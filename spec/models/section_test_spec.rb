require "spec_helper"

describe SectionTest do

  it "has a valid factory" do
    FactoryGirl.create(:section_test).should be_valid
  end

  it "requires a name" do 
    FactoryGirl.build(:section_test, name: nil).should_not be_valid
  end

  it "requires a start time" do
    FactoryGirl.build(:section_test, start_time: nil).should_not be_valid
  end

  it "requires an end time" do
    FactoryGirl.build(:section_test, end_time: nil).should_not be_valid
  end

  it "belongs to a section" do
    FactoryGirl.build(:section_test, section: nil).should_not be_valid
  end

  describe "can have a description" do
    it "is valid with a description" do
      desc= "This is a super important test!"
      FactoryGirl.create(:section_test, description: desc).should be_valid
    end

    it "is valid without a description" do
      FactoryGirl.create(:section_test, description: nil).should be_valid
    end
  end

  #it "requires at least one question"

  it "has many student tests"

  describe "grades" do

    it "has a possible mark equal to the possible marks of its questions"

    it "has bonus marks equal to the possible marks of its bonus questions"

    it "has an average grade"

    it "has a median grade"

    describe "submitting" do

      it "should be able to submit marks"

      it "knows if it was submitted"

      it "knows when it was submitted"
      
    end
    
  end

  describe "times" do

    it "has an average time taken"

    it "has a median time taken"
    
  end
  
end
