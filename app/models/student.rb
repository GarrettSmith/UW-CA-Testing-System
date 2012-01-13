class Student < User
  has_many :student_tests, :through => :enrolled_student
  has_many :sections, :through => :enrolled_student

  attr_accessible :student_number

  validates :student_number,  :presence => true,
                              :uniqueness => true,
                              :numericallity => { :only_integer => true }
end
