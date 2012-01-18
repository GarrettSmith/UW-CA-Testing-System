class Semester < ActiveRecord::Base

  include TimeInfo

  has_many :sections

  attr_accessible :name, :start_time, :end_time

  validates :name, :presence => true
  validates :start_time, :presnce => true
  validates :end_time, :presence => true
end
