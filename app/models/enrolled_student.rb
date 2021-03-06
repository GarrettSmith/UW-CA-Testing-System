# == Schema Information
#
# Table name: enrolled_students
#
#  id         :integer         not null, primary key
#  created_at :datetime
#  updated_at :datetime
#  student_id :integer
#  section_id :integer
#

# A student associated with a scetion.
class EnrolledStudent < ActiveRecord::Base
  belongs_to :student
  belongs_to :section
  has_many :student_tests

  validates :student, :presence => true
  validates :section, :presence => true

  # The average mark of this student.
  def average_percentage
    total = student_tests.map{ |x| x.percentage }.inject(0, :+)
    total / student_tests.size
  end
end
