# == Schema Information
#
# Table name: semesters
#
#  id         :integer         not null, primary key
#  start_time :date
#  end_time   :date
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Semester < ActiveRecord::Base

  include TimeInfo

  has_many :sections

  attr_accessible :name, :start_time, :end_time

  validates :name, :presence => true
  validates :start_time, :presence => true
  validates :end_time, :presence => true
end
