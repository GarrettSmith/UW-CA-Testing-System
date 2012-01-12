# A question associated with a test.
class Question < ActiveRecord::Base

  include MathHelper

  #has_many :answers
  belongs_to :section_test

  attr_accessor :name, :text, :bonus, :possible_marks

  #validates :name, :presence => true
  validates :text, :presence => true
  validates :possible_marks, :presence => true
  validates :bonus, :inclusion => { :in => [true, false] }
  validates_numericality_of :possible_marks,
                            :greater_than_or_equal_to => 0

  # The average mark earned by all answers to this question.
  def average_mark
    total = answers.map{ |x| x.earned_marks }.inject(0, :+)
    total / answers.size
  end

  # The average mark as a percentage.
  def average_mark_percentage
    ( average / @possible_marks ) * 100
  end

  # The median mark of all answers to this question.
  def median_mark
    marks = answers.map{|x| x.earned_marks }
    median(marks)
  end

  # The average time spent on this question.
  def average_time_taken
    total = answers.map{ |x| x.time_taken }.inject(0, :+)
    total / answers.size
  end

  # The median time spent on this question.
  def median_time_taken
    times = answers.map{ |x| x.time_taken }
    median(times)
  end
end
