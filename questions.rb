class Question

  attr_accessor :operand1, :operand2

  def initialize
    @operand1 = rand(1..100)
    @operand2 = rand(1..100)
  end

  def generate_question
    self.operand1 * self.operand2
  end

  def read_question
    "#{self.operand1} * #{self.operand2}"
  end

end