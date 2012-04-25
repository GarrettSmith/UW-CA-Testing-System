require 'spec_helper'

describe Question do

  it "requires a possible mark"

  it "has a possible mark greater than or equal to 0"

  it "must belong to a section test"

  it "requires text"

  it "can have a name"

  it "can be a bonus question"

  describe "answers" do
    it "has many answers"

    it "knows how many of its answers have been marked"

    it "is marked if all its answers are marked"

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
