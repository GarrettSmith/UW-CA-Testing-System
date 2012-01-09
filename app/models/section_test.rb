class SectionTest < ActiveRecord::Base
  has_many :questions
  has_many :student_tests
  belongs_to :section
end
