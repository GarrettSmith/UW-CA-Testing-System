require 'spec_helper'

describe Question do

  it "has a valid factory" do
    FactoryGirl.create(:question).should be_valid
  end

  it "requires a possible mark" do
    FactoryGirl.build(:question, possible_marks: nil).should_not be_valid
  end

  it "requires possible mark greater than or equal to 0" do
    FactoryGirl.build(:question, possible_marks: -1).should_not be_valid
  end

  it "belongs to a section test" do
    FactoryGirl.build(:question, section_test: nil).should_not be_valid
  end

  it "requires text" do
    FactoryGirl.build(:question, text: nil).should_not be_valid
  end

  describe "name" do
    it "is valid with a name" do
      name = "Question 007"
      FactoryGirl.build(:question, name: name).should be_valid
    end

    it "is valid without a name" do
      FactoryGirl.build(:question, name: nil).should be_valid
    end

  end

  describe "bonus" do
    it "is valid when a bonus question" do
      FactoryGirl.build(:question, bonus: true).should be_valid
    end

    it "is valid when not a bonus question" do
      FactoryGirl.build(:question, bonus: false).should be_valid
    end
    
    it "is not a bonus question by default" do
      FactoryGirl.build(:question, bonus: nil).bonus?.should == false
    end

  end

  describe "answers" do
    it "knows its answers"

    it "knows how many of its answers have been marked"

    it "is marked if all its answers are marked"

    it "is not marked if it has an unmarked answer"

  end

  describe "grades" do
    it "has an average mark recieved"

    it "has an average mark percentage"

    it "has a median mark earned"
    
  end

  describe "time" do
    it "has an average time taken"
    
    it "has a median time taken"

  end

end
