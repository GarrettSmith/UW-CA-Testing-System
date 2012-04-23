require "spec_helper"

describe SectionTest do

  it "should create a new section test given valid info"

  it "should require a name"

  it "should require a start time"

  it "should require an end time"

  describe "associations" do

    it "should require a section"

    it "should require at least one question"

    it "should be able to have mant student tests"
    
  end

  describe "grades" do

    it "should have possible marks equal to its question's"

    it "should have bonus marks equal to its bonus question's"

    it "should have an average grade"

    it "should have a median grade"

    describe "submitting" do

      it "should be able to submit marks"
      
    end
    
  end

  describe "times" do

    it "should have an average time taken"

    it "should have a median time taken"
    
  end
  
end
