class AnswersExceededError < Exception
end

class Response
    @@responses = []

  def self.add_response question, *answers
    @@responses << new(question, answers)
  end

  def self.dummie_response  *answers
    @@responses << new("$$", answers)
  end

  def self.end_session *answers
    @@responses << new("~~", answers)
  end

  def self.go_crazy *answers
    @@responses << new("__", answers)
  end

  def self.get_dummies
    responses = @@responses.select{|r| r.good_for? "$$"}
  end

  def self.get_end_response
    responses = @@responses.select{|r| r.good_for? "~~"}
  end

  def self.get_crazy_end
    responses = @@responses.select{|r| r.good_for? "__"}
  end

  def self.get_answer question, yell_mode, yell_counter, answer_counter
    if answer_counter > 10
      raise AnswersExceededError.new
    elsif yell_counter == 10
        self.get_crazy_end.sample.get_answers.sample
    elsif answer_counter == 10
        self.get_end_response.sample.get_answers.sample
    else
      responses = @@responses.select{|r| r.good_for? question}
  # puts responses.inspect
      if responses.length > 0
        yell_mode ? responses.sample.get_answers.sample.upcase : responses.sample.get_answers.sample
      else
        yell_mode ? self.get_dummies.sample.get_answers.sample.upcase : self.get_dummies.sample.get_answers.sample
      end
    end
  end

  def initialize question, answers
    @question = question.downcase
    @answers = answers
  end

  def good_for? question
      question.downcase.include? @question
  end

  def get_answers
      @answers
  end
end
