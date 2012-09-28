def binary_search(numbers, key)
  length = numbers.length
  if length == 1
    if numbers[0] == key
      puts "key found at position 1"
    else
      puts "Key not found"
      Process.exit
    end
  end
  mid = length/2
  if numbers[mid] == key
    puts "number found at position #{mid+1}"
  elsif  numbers[mid] > key
    binary_search(numbers[0..mid], key)
  elsif numbers[mid] < key
    binary_search(numbers[(mid+1)..-1], key)
  else
    puts "Key #{key} not found"
    Process.exit
  end
end

puts "enter sorted sequence of numbers separated by a comma"
numbers = gets
puts "enter a key to search"
key = Integer(gets)

numbers = numbers.split(',')
numbers.each do |number|
  numbers[numbers.index(number)] = Integer(number)
end
binary_search(numbers, key)
