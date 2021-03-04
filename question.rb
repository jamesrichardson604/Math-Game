class Question

  attr_accessor :num_one, :num_two, :answer, :question

  def initialize
    @num_one = num_one
    @num_two = num_two
    @answer = answer
    @question = question
  end

  def question
    self.num_one = rand(1...20)
    self.num_two = rand(1...20)
    self.answer = self.num_one + self.num_two
    self.question = "What does #{num_one} plus #{num_two} equal?"
  end

end