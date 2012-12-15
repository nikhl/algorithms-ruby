def quick_sort(numbers)
  length = numbers.length
  return numbers if length < 2
  less = []
  high = []
  pivot = numbers.delete_at(length/2)
  numbers.each do |number|
    less.push(number) if number < pivot
    high.push(number) if number >= pivot
  end
  quick_sort(less) + [pivot] + quick_sort(high)
end

puts "Enter numbers separated by comma as 1,2,3...."
numbers_string = gets.strip
numbers = []
numbers_string.split(',').each do |number|
  numbers.push(number)
end

puts "Numbers in sorted order is"
quick_sort(numbers).each do |number|
  print "#{number} "
end
