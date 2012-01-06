class StudentTest < ActiveRecord::Base
  belongs_to :enrolled_student
  belongs_to :test
  has_many :answers
end
