require 'spec_helper'

describe User do

  it "has a valid factory" do
    FactoryGirl.create(:user).should be_valid
  end

  it "has a valid admin factory" do
    FactoryGirl.create(:admin).should be_valid
  end

  describe "name" do
    it "requires a first name" do
      FactoryGirl.build(:user, first_name: nil).should_not be_valid
    end

    it "requires a last name" do
      FactoryGirl.build(:user, last_name: nil).should_not be_valid
    end

    it "requires a user name" do
      FactoryGirl.build(:user, user_name: nil).should_not be_valid
    end

    it "requires a unique user name" do
      uname = "Billy"
      FactoryGirl.create(:user, user_name: uname)
      FactoryGirl.build(:user, user_name: uname).should_not be_valid
    end

    it "gives a full name" do
      u = FactoryGirl.create(:user, first_name: "John", last_name: "Doe")
      u.full_name.should == "John Doe"
    end

    it "gives a full name with the last name first" do
      u = FactoryGirl.create(:user, first_name: "John", last_name: "Doe")
      u.full_name_reversed.should == "Doe, John"
    end
  end

  describe "email" do
    it "requires an email" do
      FactoryGirl.build(:user, email: nil).should_not be_valid
    end

    it "requires a unique email" do
      email = "123@example.com"
      FactoryGirl.create(:user, email: email)
      FactoryGirl.build(:user, email: email).should_not be_valid
    end

    it "recieves emails by default" do
      FactoryGirl.create(:user).recieve_email?.should == true
    end

    it "can enable recieveing emails" do 
      u = FactoryGirl.create(:user, recieve_email: false)
      u.enable_email
      u.recieve_email?.should == true
    end

    it "can disable recieveing emails" do
      u = FactoryGirl.create(:user) 
      u.disable_email
      u.recieve_email?.should == false
    end
  end

  describe "password" do
    it "requires a password" do
      FactoryGirl.build(:user, password: nil).should_not be_valid
    end

    it "should be at least 6 characters long" do 
      FactoryGirl.build(:user, password: "pass").should_not be_valid
    end

  end

  describe "role" do

    it "can be an admin" do
      FactoryGirl.create(:admin).admin?.should == true
    end

    it "can be a student" do
      FactoryGirl.create(:student).student?.should == true
    end

    it "can be a professor" do
      FactoryGirl.create(:professor).professor?.should == true
    end

  end

end
