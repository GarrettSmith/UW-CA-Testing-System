require 'spec_helper'

describe Student do
  it "has a valid factory" do
    FactoryGirl.create(:student).should be_valid
  end

  it "must belong to a user" do
    FactoryGirl.build(:student, user: nil).should_not be_valid
  end

  it "requires a student number" do
    FactoryGirl.build(:student, student_number: nil).should_not be_valid
  end

  it "has a unique student number" do
    no = 711
    FactoryGirl.create(:student, student_number: no)
    FactoryGirl.build(:student, student_number: no).should_not be_valid
  end
  
  describe "sections" do
    before :each do
      @student = FactoryGirl.create(:student)
      @active_sections = FactoryGirl.create_list(:active_section, 3)
      @past_sections = FactoryGirl.create_list(:past_section, 3)
      @all_sections = @past_sections ++ @active_sections
      @all_sections.each { |s| s.enroll(student) }
    end

    it "knows what sections it has enrolled in" do
      @student.sections.should == @all_sections
    end

    it "knows what active sections it is enrolled it" do
      @student.active_sections.should == @active_sections
    end

    it "knows what past sections it has enrolled in" do
      @student.past_sections.should == @past_sections
    end

  end

  describe "tests" do
    before :each do
      @student = FactoryGirl.create(:student)
      @active_student_tests = FactoryGirl.create_list(:active_student_test, 3)
      @past_student_tests = FactoryGirl.create_list(:past_student_test, 3 )
      @upcoming_student_tests = FactoryGirl.create_list(:upcoming_student_test, 3 )
    end

    it "knows what past tests it has written" do
      @student.past_tests.should == @past_sections
    end

    it "knows what active tests it has to write" do
      @student.active_tests.should == @active_sections
    end

    it "knows what upcoming tests it has" do
      @student.upcoming_tests.should == @upcoming_sections
    end

    it "knows if it has active tests" do
      @student.has_active_tests?.should == true
    end

    it "knows if it does not have an active test" do
      FactoryGirl.create(:student).has_active_tests?.should == false
    end
    
  end

  describe "abilities" do
    subject { ability }
    let(:student){ FactoryGirl.create(:student) }
    let(:user){ student.user }
    let(:ability){ Ability.new(user) }

    describe "sections" do
      before :each do
        @section = FactoryGirl.create(:section)
      end

      it "can view sections it is enrolled it" do
        @section.enroll(student)
        should be_able_to(:read, @section)
      end

      it "can not view sections it is not enrolled in" do
        should_not be_able_to(:read, @section)
      end

    end

    describe "tests" do
      it "can view student tests it has written"

      it "can write active section tests of tests it is enrolled in"
      
    end
    
  end

  #describe "grades" do
    #it "has an average mark"
  #end
  
end
