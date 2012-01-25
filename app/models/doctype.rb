class Doctype < ActiveRecord::Base
  has_many :files

  attr_accessible :name
end
