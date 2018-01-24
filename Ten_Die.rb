# class Ten_Die
#   def roll
#     loop do |num|
#       num = rand(10)+1
#       puts "Rolling Die ... #{num}"
#       if num == 10
#         puts "Rolled a 10 !!! Breaking out of loop ..."
#         break
#       end
#     end
#   end
# end

class Ten_Die
  def roll
    @num = rand(10)
  end
  def roll_until(number)
    # unless (number >= 0) && (number <= 10)
    #   return "Choose number between 0 and 9!"
    # end
    while @num != number
      puts "#{self.roll}"
    end
    "Finally! You rolled a #{@num}."
  end
  def to_str
    "This roll was a ... #{@num}"
  end
end


my_die = Ten_Die.new

puts "-------------- Single rolls: --------------"

puts my_die.roll
puts my_die.roll
puts my_die.roll

puts "-------------- roll + to_str: --------------"

my_die.roll 
puts my_die.to_str
my_die.roll 
puts my_die.to_str
my_die.roll 
puts my_die.to_str

puts "------------- roll_until(number): ----------"

my_die.roll_until(5)
my_die.roll_until(0)
my_die.roll_until(9)






