class Student < User
  has_many :student_tests, :through => :enrolled_student
  has_many :sections, :through => :enrolled_student
end
