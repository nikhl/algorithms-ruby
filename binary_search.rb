def binary_search(numbers, key)
  length = numbers.length
  mid = length/2
  if numbers[mid] == key
    puts "number found at position #{mid+1}"
  elsif length == 1
    puts "Key #{key} not found"
  elsif  numbers[mid] > key
    binary_search(numbers[0..mid], key)
  elsif numbers[mid] < key
    binary_search(numbers[(mid+1)..-1], key)
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
