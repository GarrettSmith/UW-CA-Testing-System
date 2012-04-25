require 'spec_helper'

describe Course do

  it "has a valid factory" do
    FactoryGirl.create(:course).should be_valid
  end

  it "should have a name" do
    FactoryGirl.build(:course, name: nil).should_not be_valid
  end

  it "should have a number" do
    FactoryGirl.build(:course, number: nil).should_not be_valid
  end

  it "should have a department code" do 
    FactoryGirl.build(:course, department_code: nil).should_not be_valid
  end

  describe "associations" do

    it "should have many sections"
    
  end
  
end
