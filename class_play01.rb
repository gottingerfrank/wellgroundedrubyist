# Last login: Mon Dec  4 09:09:26 on ttys002
# [mc@mbp13xxx]:~$ irb


class Ticket
def initialize(venue, date)
@venue = venue
@date = date
end
@test1 = "test1"
self.test2 = test2
def price=(price)
@price = price
@test3 = "test3: defined inside price method of class Ticket"
end
self.test2 = "test2 defined with self instead @ outside of methods inside class"
def venue
@venue
end
def date
@date
end
def price
@price
self.is_price = "is_price attribute set with self inside method inside class"
end
end
NameError: undefined local variable or method `test2' for Ticket:Class
Did you mean?  test
               @test1
	from (irb):7:in `<class:Ticket>'
	from (irb):1
	from /Users/mc/.rbenv/versions/2.4.2/bin/irb:11:in `<main>'
ticket1 = Ticket.new
ArgumentError: wrong number of arguments (given 0, expected 2)
	from (irb):2:in `initialize'
	from (irb):24:in `new'
	from (irb):24
	from /Users/mc/.rbenv/versions/2.4.2/bin/irb:11:in `<main>'
ticket1 = Ticket.new("Theatre", "March 3rd")
=> #<Ticket:0x00007fa5a4215128 @venue="Theatre", @date="March 3rd">
ticket1.venue
NoMethodError: undefined method `venue' for #<Ticket:0x00007fa5a4215128 @venue="Theatre", @date="March 3rd">
	from (irb):26
	from /Users/mc/.rbenv/versions/2.4.2/bin/irb:11:in `<main>'
ticket1.price
NoMethodError: undefined method `price' for #<Ticket:0x00007fa5a4215128 @venue="Theatre", @date="March 3rd">
	from (irb):27
	from /Users/mc/.rbenv/versions/2.4.2/bin/irb:11:in `<main>'
ticket1.date
NoMethodError: undefined method `date' for #<Ticket:0x00007fa5a4215128 @venue="Theatre", @date="March 3rd">
	from (irb):28
	from /Users/mc/.rbenv/versions/2.4.2/bin/irb:11:in `<main>'
ticket1.class
=> Ticket
ticket1.date
NoMethodError: undefined method `date' for #<Ticket:0x00007fa5a4215128 @venue="Theatre", @date="March 3rd">
	from (irb):30
	from /Users/mc/.rbenv/versions/2.4.2/bin/irb:11:in `<main>'
ticket1.is_price
NoMethodError: undefined method `is_price' for #<Ticket:0x00007fa5a4215128 @venue="Theatre", @date="March 3rd">
	from (irb):31
	from /Users/mc/.rbenv/versions/2.4.2/bin/irb:11:in `<main>'
class Test
def initialize(price, location)
@price = price
@location = location
end
end
=> :initialize
test1 = Test.new
ArgumentError: wrong number of arguments (given 0, expected 2)
	from (irb):33:in `initialize'
	from (irb):38:in `new'
	from (irb):38
	from /Users/mc/.rbenv/versions/2.4.2/bin/irb:11:in `<main>'
test1 = Test.new("$3.50", "Madison Square Garden")
=> #<Test:0x00007fa5a4135e10 @price="$3.50", @location="Madison Square Garden">
test1.location
NoMethodError: undefined method `location' for #<Test:0x00007fa5a4135e10>
	from (irb):40
	from /Users/mc/.rbenv/versions/2.4.2/bin/irb:11:in `<main>'
test1.price
NoMethodError: undefined method `price' for #<Test:0x00007fa5a4135e10>
	from (irb):41
	from /Users/mc/.rbenv/versions/2.4.2/bin/irb:11:in `<main>'
Class Test
NoMethodError: undefined method `Class' for main:Object
	from (irb):42
	from /Users/mc/.rbenv/versions/2.4.2/bin/irb:11:in `<main>'
class Test
def get_price
return @price
end
end
=> :get_price
test1.get_price
=> "$3.50"
Test.inspect
=> "Test"
p Test
Test
=> Test
Class Dog
NameError: uninitialized constant Dog
	from (irb):51
	from /Users/mc/.rbenv/versions/2.4.2/bin/irb:11:in `<main>'

class Dog
attr_accessor :name :race :color
end
SyntaxError: (irb):53: syntax error, unexpected ':', expecting keyword_end
attr_accessor :name :race :color
                     ^
	from /Users/mc/.rbenv/versions/2.4.2/bin/irb:11:in `<main>'
class Dog
att_reader :name
end
NoMethodError: undefined method `att_reader' for Dog:Class
Did you mean?  attr_reader
	from (irb):56:in `<class:Dog>'
	from (irb):55
	from /Users/mc/.rbenv/versions/2.4.2/bin/irb:11:in `<main>'
class Dog
attr_reader :name
end
=> nil
class Dog
attr_accessor :training
end
=> nil
bertie = new Dog
NoMethodError: undefined method `new' for main:Object
	from (irb):64
	from /Users/mc/.rbenv/versions/2.4.2/bin/irb:11:in `<main>'
bertie = Dog.new
=> #<Dog:0x00007fa5a417c568>
bertie.name
=> nil
bertie.training
=> nil
puts bertie.training

=> nil
class Dog
def initialize(name, color, training)
@name = name; @color=color; @training = training
end
attr_reader :color
end
=> nil
bertie.color
=> nil
bertie.name
=> nil
bertie.training
=> nil
bertie = Dog.new
ArgumentError: wrong number of arguments (given 0, expected 3)
	from (irb):70:in `initialize'
	from (irb):78:in `new'
	from (irb):78
	from /Users/mc/.rbenv/versions/2.4.2/bin/irb:11:in `<main>'
bertie = Dog.new("Bertie", "black", 0)
=> #<Dog:0x00007fa5a410fe68 @name="Bertie", @color="black", @training=0>
bertie.color
=> "black"
bertie.training
=> 0
bertie.name
=> "Bertie"
bertie.color = "white"
NoMethodError: undefined method `color=' for #<Dog:0x00007fa5a410fe68>
Did you mean?  color
	from (irb):83
	from /Users/mc/.rbenv/versions/2.4.2/bin/irb:11:in `<main>'
bertie.name = "Sherek"
NoMethodError: undefined method `name=' for #<Dog:0x00007fa5a410fe68>
Did you mean?  name
	from (irb):84
	from /Users/mc/.rbenv/versions/2.4.2/bin/irb:11:in `<main>'
bertie.training = 4
=> 4
p bertie
#<Dog:0x00007fa5a410fe68 @name="Bertie", @color="black", @training=4>
=> #<Dog:0x00007fa5a410fe68 @name="Bertie", @color="black", @training=4>
class Dog
attr_writer :test
end
=> nil
bertie.test
NoMethodError: private method `test' called for #<Dog:0x00007fa5a410fe68>
Did you mean?  test=
	from (irb):90
	from /Users/mc/.rbenv/versions/2.4.2/bin/irb:11:in `<main>'
harry = Dog.new
ArgumentError: wrong number of arguments (given 0, expected 3)
	from (irb):70:in `initialize'
	from (irb):91:in `new'
	from (irb):91
	from /Users/mc/.rbenv/versions/2.4.2/bin/irb:11:in `<main>'
harry = Dog.new("Harry", "white", 2)
=> #<Dog:0x00007fa5a41e4870 @name="Harry", @color="white", @training=2>
harry.name
=> "Harry"
harry.training
=> 2
harry.test
NoMethodError: private method `test' called for #<Dog:0x00007fa5a41e4870>
Did you mean?  test=
	from (irb):95
	from /Users/mc/.rbenv/versions/2.4.2/bin/irb:11:in `<main>'
harry.test = "gggsgdr!"
=> "gggsgdr!"
harry.test
NoMethodError: private method `test' called for #<Dog:0x00007fa5a41e4870>
Did you mean?  test=
	from (irb):97
	from /Users/mc/.rbenv/versions/2.4.2/bin/irb:11:in `<main>'
harry.training
=> 2
puts harry.training
2
=> nil
puts harry.test
NoMethodError: private method `test' called for #<Dog:0x00007fa5a41e4870>
Did you mean?  test=
	from (irb):100
	from /Users/mc/.rbenv/versions/2.4.2/bin/irb:11:in `<main>'
"The status of #{self} is #{type}."
