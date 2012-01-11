# A collection of tests with students and a professor.
class Section < ActiveRecord::Base
  
  include MathHelper

  has_many :students, :through => :enrolled_students
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
end
