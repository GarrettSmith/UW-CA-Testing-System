# == Schema Information
#
# Table name: test_files
#
#  id               :integer         not null, primary key
#  type             :string(255)
#  modifiable       :boolean
#  executable       :boolean
#  highlight_syntax :boolean
#  name             :string(255)
#  created_at       :datetime
#  updated_at       :datetime
#

class QuestionFile < TestFile
  belongs_to :coding_question
end
