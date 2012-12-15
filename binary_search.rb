# Takes log(n) time where n is the size of input
# using Divide and Conquer design strategy
def binary_search(numbers, low, high, key)
  mid = (low+high)/2
  if low > high
    puts "Key #{key} not found"
    return nil
  end
  if numbers[mid] == key
    puts "number found at position #{mid+1}"
  elsif numbers[mid] > key
    high = mid-1
    binary_search(numbers, low, high, key)
  elsif numbers[mid] < key
    low = mid+1
    binary_search(numbers, low, high, key)
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
binary_search(numbers, 0, numbers.length-1, key)
