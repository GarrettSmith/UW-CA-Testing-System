# == Schema Information
#
# Table name: students
#
#  id             :integer         not null, primary key
#  student_number :string(255)
#  user_id        :integer
#  created_at     :datetime
#  updated_at     :datetime
#

class Student < ActiveRecord::Base
  include UserType

  belongs_to :user, :autosave => true

  has_many :enrolled_students
  has_many :student_tests, :through => :enrolled_student
  has_many :sections, :through => :enrolled_students

  attr_accessible :student_number

  validates :student_number,  :presence => true,
                              :uniqueness => true

  after_initialize :setup_user
end
