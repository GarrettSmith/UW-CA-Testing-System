class Question < ActiveRecord::Base
  has_many :answers
  belongs_to :test

  attr_accessor :name, :text, :bonus, :possible_marks

  #validates :name, :presence => true
  validates :text, :presence => true
  validates :possible_marks,  :numericality => true,
                              :greater_than_or_equal_to => 0
  validates :bonus, :inclusion => { :in => [true, false] }

  def average_mark
    total = answers.map{ |x| x.earned_marks }.inject(0, :+)
    total / answers.size
  end

  def average_mark_percentage
    ( average / @possible_marks ) * 100
  end

  def median_mark
    marks = answers.map{|x| x.earned_marks }
    median(marks)
  end

  def average_time_taken
    total = answers.map{ |x| x.time_taken }.inject(0, :+)
    total / answers.size
  end

  def median_time_taken
    times = answers.map{ |x| x.time_taken }
    median(times)
  end

  private
    
    def median(arr)
      sorted_arr = arr.sort
      if arr.size.even?
        ( sorted_arr[size / 2] + sorted_arr[size / 2 + 1] ) / 2
      else
        sorted_arr[(size / 2).ceil]
      end
    end
end
