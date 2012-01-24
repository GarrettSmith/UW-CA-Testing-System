# == Schema Information
#
# Table name: sections
#
#  id           :integer         not null, primary key
#  number       :integer
#  room_number  :string(255)
#  created_at   :datetime
#  updated_at   :datetime
#  professor_id :integer
#  course_id    :integer
#  semester_id  :integer
#

# A collection of tests with students and a professor.
class Section < ActiveRecord::Base
  
  include MathHelper

  has_many :enrolled_students
  has_many :students, :through => :enrolled_students
  has_many :section_tests
  belongs_to :proffessor
  belongs_to :course
  belongs_to :semester

  attr_accessible :number, :room_number

  # The average of all tests from a section.
  def average_percentage
    total = tests.select{ |x| x.submitted? }.
      map{ |x| x.average_percentage }.inject(0, :+)
    total / tests.size
  end

  # The median percentage of all tests in a section.
  def median_percentage
    marks = enrolled_students.map{ |x| x.average_percentage }
    median(marks)
  end

    def self.recent_tests(professor_id, total_amount)
    recent_sections = Section.all()
    recent_sections
    end

end 
