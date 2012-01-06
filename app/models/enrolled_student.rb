class EnrolledStudent < ActiveRecord::Base
  belongs_to :student
  belongs_to :section
  has_many :student_tests
end
