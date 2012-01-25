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

class AnswerFile < TestFile
  belongs_to :coding_answer

  def path
    File.join(
              section.id,
              "tests",
              test.id, 
              question.id,
              "answer_files",
              student.id,
              self.id)
  end

  private 
    # names for the file path
    def section
      section_test.section
    end

    def test
      question.section_test
    end

    def question
      self.coding_answer.coding_question
    end
end
