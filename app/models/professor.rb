# == Schema Information
#
# Table name: professors
#
#  id            :integer         not null, primary key
#  office_number :string(255)
#  user_id       :integer
#  created_at    :datetime
#  updated_at    :datetime
#

class Professor < ActiveRecord::Base
  include UserType

  belongs_to :user, :autosave => true

  has_many :sections
  has_many :section_tests, :through => :sections

  attr_accessible :office_number

  after_initialize :setup_user

  validates :user, :presence => true

end
