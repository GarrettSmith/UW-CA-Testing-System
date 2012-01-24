# == Schema Information
#
# Table name: courses
#
#  id              :integer         not null, primary key
#  name            :string(255)
#  number          :string(255)
#  department_code :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#

class Course < ActiveRecord::Base
  has_many :sections

  attr_accessible :name, :number, :department_code

  validates :name, :presence => true
  validates :number, :presence => true
  validates :department_code, :presence => true
end
