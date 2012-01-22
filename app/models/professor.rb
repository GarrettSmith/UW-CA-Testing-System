class Professor < ActiveRecord::Base
  include UserType

  belongs_to :user, :autosave => true

  has_many :sections
  has_many :section_tests, :through => :sections

  attr_accessible :office_number

  after_initialize :setup_user

  >>>>>>> bf32b5193e70b6e27004d90e6fac2c9b9b816956

  $recent_test_size = 0


  def self.recent_tests(professor_id, total_amount)
    @recent_test_sections = Section.recent_tests(professor_id,total_amount)
    $recent_test_size = @recent_test_sections.length

    @recent_test_sections
  end

  def self.marked_tests(professor_id, total_amount)

    marked_array = Array.new($recent_test_size)
     i = 0

    for each in marked_array
      marked_array[i] = false
      i +=1
    end

    marked_array

  end



>>>>>>> bf32b5193e70b6e27004d90e6fac2c9b9b816956
end
