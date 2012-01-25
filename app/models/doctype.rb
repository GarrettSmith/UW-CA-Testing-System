# == Schema Information
#
# Table name: doctypes
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Doctype < ActiveRecord::Base
  has_many :files

  attr_accessible :name
end
