require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/joke'
require 'pry'

class JokeTest < Minitest::Test

  def setup
    @joke = Joke.new({id: 1, question: "Knock knock?", answer: "Whose there?"})
  end

  def test_joke_exists
    skip
    assert_instance_of @joke, Joke.new
  end

  def test_joke_has_data
    expected = {:id=>1, :question=>"Knock knock?", :answer=>"Whose there?"}
    assert_equal expected, @joke.data
  end

  def test_joke_has_id
    assert_equal 1, @joke.id
  end

  def test_joke_has_question
    expected = "Knock knock?"
    assert_equal expected, @joke.question
  end

  def test_joke_has_answer
    expected = "Whose there?"
    assert_equal expected, @joke.answer
  end

  # def test_telling_person_joke
  #   skip
  #   person.learn(joke)
  # end

end
