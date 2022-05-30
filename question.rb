class Question 

  attr_accessor :question, :answer
  
def initialize

num_1 = rand(1..20)
num_2 = rand(1..20)

@question = "What is #{num_1} + #{num_2}?"
@answer = num_1 + num_2
  end
end 