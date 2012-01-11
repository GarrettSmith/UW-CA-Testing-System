# A student associated with a scetion.
class EnrolledStudent < ActiveRecord::Base
  belongs_to :student
  belongs_to :section
  has_many :student_tests

  # The average mark of this student.
  def average_percentage
    total = student_tests.map{ |x| x.percentage }.inject(0, :+)
    total / student_tests.size
  end
end
