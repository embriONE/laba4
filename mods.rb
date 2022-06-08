def search(fileName,resultFile)
  puts "type age pls:"
  studentAge = gets.to_i
  i = 0
  if File.exist?(fileName)
    while (i < stringCounter(fileName) and studentAge != -1)
    file = File.open(resultFile, 'w')
    File.foreach(fileName) do |string|
      if string.include?(studentAge.to_s) 
        file.puts(string)
        puts "i found smth "
        i += 1
      end
    end
    puts "type age"
    studentAge = gets.to_i
    end
    if Filxec e.zero?(file)
      puts "error i didn't find smth"
    end
    file.close
  else puts "no file"
  end
end



def stringCounter(fileName)
  list = []
  File.foreach(fileName) {|string| list.push(string)}
  
  return list.length
end



def outputAll(fileName)
  if File.exist?(fileName)
    File.foreach(fileName).with_index {|string, index| 
      puts "#{index}: #{string}"}
  else puts "no file"
  end
end