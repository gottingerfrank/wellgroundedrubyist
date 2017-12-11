
puts "This is self at the very top level: #{self}"

class Person
  attr_accessor :name, :age
  puts "This is self inside a class: #{self}"

  module Skilled
    puts "This is self inside a module inside class: #{self}"
  end

  def initialize(name, age)
    @name = name
    @age = age 
    puts "This is self inside an instance method: #{self}"
  end
end

me = Person.new("Franjo", 32)

puts me.name 
puts me.age









