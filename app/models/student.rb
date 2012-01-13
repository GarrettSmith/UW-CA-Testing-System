class Student < User
  has_many :student_tests, :through => :enrolled_student
  has_many :enrolled_students
  has_many :sections, :through => :enrolled_students

  attr_accessible :student_number

  validates :student_number,  :presence => true,
                              :numericality => { :only_integer => true },
                              :uniqueness => true
end
