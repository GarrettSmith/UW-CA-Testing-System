class Section < ActiveRecord::Base
  has_many :students, :through => :enrolled_students
  belongs_to :proffessor
  belongs_to :course
  belongs_to :semester
end
