require_relative "mods"

$stateMenu
def menu()
  puts "choose: (0) exit (1) show original (2) type smthg (3) show result   "
  $stateMenu = gets.to_i
end
menu()
$fileName = 'text1.txt'
$resultFile = 'results.txt'
while $stateMenu != 0 do
  case $stateMenu
    when 1
      outputAll($fileName)
      menu()
    when 2
      search($fileName, $resultFile)
      menu()
    when 3
      outputAll($resultFile)
      menu()
  else 
    puts "wrong number (have you played hotline miami?)"
  end
end

