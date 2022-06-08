def deposit()
  puts "type amount to dep:"
  depositSum = gets.to_i
  if depositSum > 0
    $balance = $balance + depositSum
  else puts "wrong number!!!!"
  end
  puts "balance now is: #{$balance}"
end



def withdraw()
  puts "type amount to withdraw:"
  withdrawSum = gets.to_i
  if (withdrawSum > 0 and withdrawSum <= $balance)
    $balance = $balance - withdrawSum
  else puts "you kidding me?"
  end
  puts "balance now is: #{$balance}"
end



def balance()
  puts "balance now is: #{$balance}"
end