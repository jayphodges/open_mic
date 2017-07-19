# /lib/node.rb
require 'pry'
class Joke
  attr_accessor :data,
                :id,
                :question,
                :answer

  def initialize(data = {})
    @data = data
  end

  def id
    @data[:id]
  end

  def question
    @data[:question]
  end

  def answer
    @data[:answer]
  end

end

# joke = Joke.new({id: 1, question: "Knock knock?", answer: "Whose there?"})
# binding.pry
