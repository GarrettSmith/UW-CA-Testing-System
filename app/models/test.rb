class Test < ActiveRecord::Base
  has_many :questions
  has_many :student_test
  belongs_to :section
end
