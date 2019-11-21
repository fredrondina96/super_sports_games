require 'pry'

class Event

attr_reader :name, :age

  def initialize(name, age)
    @name = name
    @age = []
  end
binding.pry
end
