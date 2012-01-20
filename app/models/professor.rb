class Professor < ActiveRecord::Base
  include UserType

  belongs_to :user, :autosave => true

  has_many :sections
  has_many :section_tests, :through => :sections

  attr_accessible :office_number

  after_initialize :setup_user
end
