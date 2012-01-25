require 'spec_helper'

describe Section do
  before :each do
    course_attr = { :name => "example_course",
                    :number => 321,
                    :department_code => "TST",
                  }
    @course = Course.create(course_attr)

    semester_attr = { :start_time => Time.now,
                      :end_time => (Time.now + 6.months),
                      :name => "Fall",
                    }
    @semester = Semester.create(semester_attr)

    @attr = { :number => 1234, 
              :room_number => "12A3",
            }
  end

  it "should create a new section given valid info" do
    valid_section = Section.new(@attr)
    valid_section.course = @course
    valid_section.semester = @semester
    valid_section.should be_valid
  end

  it "should require a (section) number" do
    no_number = Section.new(@attr.merge(:number => nil));
    no_number.should_not be_valid
  end

  it "should require a room number" do
    no_room = Section.new(@attr.merge(:room_number => ""))
    no_room.should_not be_valid
  end

  describe "associations" do

    before :each do
      @section = Section.new(@attr)
      @section.course = @course
      @section.semester = @semester
      @section.save!
    end

    it "should require a course" do
      @section.course = nil
      @section.should_not be_valid
    end

    it "should require a semester" do
      @section.semester = nil
      @section.should_not be_valid
    end

    it "should have a complete section number" do
      @section.full_course_number.should == "TST-321-1234"
    end
  end

  describe "grades" do

    before :each do
      @section = Section.new(@attr)
    end

    it "should have the average grade of section tests"

    it "should have the median grade of section tests"
  end

end
