class Ten_Die
  def roll
    loop do |num|
      num = rand(10)+1
      puts "Rolling Die ... #{num}"
      if num == 10
        puts "Rolled a 10 !!! Breaking out of loop ..."
        break
      end
    end
  end
end

