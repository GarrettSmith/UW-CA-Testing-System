require 'spec_helper'

describe Section do
  it "has a valid factory" do
    FactoryGirl.create(:section).should be_valid
  end

  it "requires a number" do
    FactoryGirl.build(:section, number: nil).should_not be_valid
  end

  it "requires a room number" do
    FactoryGirl.build(:section, room_number: nil).should_not be_valid
  end

  it "has a complete section number" 

  describe "associations" do
    it "belong to a course" do
      FactoryGirl.build(:section, course: nil).should_not be_valid
    end

    it "belongs to a semester" do
      FactoryGirl.build(:section, semester: nil).should_not be_valid
    end

    it "belongs to a professor" do 
      FactoryGirl.build(:section, professor: nil).should_not be_valid
    end

    it "has many enrolled students"

    it "has many students"

    it "has many section tests"

  end

  describe "grades" do
    it "knows the average grade of section tests"

    it "knows the median grade of sections tests"

  end

end
