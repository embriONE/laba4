require_relative "mods1"

$balance = 100.0
BANK_ACCOUNT = 'balance.txt'
$stateMenu
def bankAccount(fileName)
  if File.exist?(fileName)
    File.foreach(fileName) {|string| $balance = string.to_i}
  else puts "no file" 
  end
  puts "balance is: #{$balance}"
end



def menu()
  puts "Choose action: (0) exit (1) deposit (desposito) (2) withdraw (3) balance: "
  $stateMenu = gets.chomp
end



bankAccount(BANK_ACCOUNT)
menu()
while ($stateMenu != "0") do
  case $stateMenu
    when "1"
      deposit()
      menu()
    when "2"
      withdraw()
      menu()
    when "3"
      balance()
      menu()
  else 
    puts "wrong number :)"
    break
  end
end