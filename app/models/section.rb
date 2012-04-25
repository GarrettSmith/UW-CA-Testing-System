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
  belongs_to :professor
  belongs_to :course
  belongs_to :semester

  attr_accessible :number, :room_number

  validates :number, :presence => true
  validates :room_number, :presence => true
  validates :course, :presence => true
  validates :semester, :presence => true
  validates :professor, :presence => true

  # The full course number of this section.
  # eg ACS-2909-001
  def full_course_number
    department = self.course.department_code
    course = self.course.number
    "#{department}-#{course}-#{number}"
  end

  # The average of all tests from a section.
  def average_percentage
    submitted_tests = section_tests.select{ |x| x.submitted? }
    total = submitted_tests.
      map{ |x| x.average_percentage }.inject(0, :+)
    total / submitted_tests.size
  end

  # The median percentage of all tests in a section.
  def median_percentage
    marks = enrolled_students.map{ |x| x.average_percentage }
    median(marks)
  end

end 
