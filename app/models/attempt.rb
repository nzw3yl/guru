class Attempt < ActiveRecord::Base
  attr_accessible :answer, :final, :question_id, :score, :test_code, :user_id, :selected
  attr_accessor :selected
  belongs_to :question
  belongs_to :user
  counter_culture :user
  
  def answer_array
    self.answer.split(",").reject{|a| a.empty? }.map {|a| a.to_i }
  end

  def calculate_score
    @matches = Question.find(question_id).answer_array - self.answer_array
    self.score = @matches.empty? ? 10 : 0
  end

end
