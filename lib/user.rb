require './lib/joke'

class User
  attr_reader :name,
              :jokes

  def initialize(name)
    @name = name
    @jokes = []
  end

  def learn(joke)
    @jokes << joke
  end

  def tell(person, joke)
    person.learn(joke)
  end

  def perform_routine_for(person)
    @jokes.each do |joke|
      tell(person,joke)
    end
  end

end
