class Semester < ActiveRecord::Base

  include TimeInfo

  has_many :sections

  attr_accessible :name, :start_time, :end_time
end
