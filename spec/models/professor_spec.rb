require 'spec_helper'

describe Professor do
  it "has a valid factory" do
    FactoryGirl.create(:professor).should be_valid
  end
  
  it "belongs to a user" do
    FactoryGirl.build(:professor, user: nil).should_not be_valid
  end

  describe "can have an office number" do
    it "is valid with office number" do
      office_number = "1M234"
      FactoryGirl.create(:professor, office_number: office_number).should be_valid
    end

    it "is valid without office number" do
      FactoryGirl.create(:professor, office_number: nil).should be_valid
    end

  end

  it "has many sections"

  it "has many sections tests"

  it "knows all unmarked section tests"

end
