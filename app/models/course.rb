class Course < ActiveRecord::Base
  has_many :sections

  attr_accessible :name, :number, :department_code

  validates :name, :presence => true
  validates :number, :presence => true
  validates :department_code, :presence => true
end
