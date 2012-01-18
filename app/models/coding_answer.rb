class CodingAnswer < Answer
  has_many :answer_files
  belongs_to :coding_question
end
