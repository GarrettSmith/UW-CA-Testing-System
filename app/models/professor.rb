class Professor < User
  has_many :sections
  has_many :section_tests, :through => :sections
end
