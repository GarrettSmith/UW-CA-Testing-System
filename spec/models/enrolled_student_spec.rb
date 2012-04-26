require 'spec_helper'

describe EnrolledStudent do
  it "has a valid factory" do
    FactoryGirl.create(:enrolled_student).should be_valid
  end

  it "belongs to a student" do
    FactoryGirl.build(:enrolled_student, student: nil).should_not be_valid
  end

  it "belongs to a section" do
    FactoryGirl.build(:enrolled_student, section: nil).should_not be_valid
  end

  describe "grades" do
    it "has an average percentage"
    
  end

  describe "tests" do
    it "has many student tests"
    it "knows upcoming tests"
    it "knows active tests"
    it "knows marked tests"
    it "knows unmarked tests"
  end
end
