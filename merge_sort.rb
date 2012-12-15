# Takes nlog(n) time where n is the size of input
# using Divide and Conquer design strategy
def merge(left, right)
  if left.length == 0
    right
  elsif right.length == 0
    left
  elsif left[0] > right[0]
    [right.first] + merge(left, right[1..-1])
  else
    [left.first] + merge(left[1..-1], right)
  end
end

def merge_sort(numbers)
  length = numbers.length
  if length == 1
    sorted = numbers
  else
    mid    = (length-1)/2
    left   = merge_sort(numbers[0..mid])
    right  = merge_sort(numbers[(mid+1)..-1])
    sorted = merge(left, right)
  end
  sorted
end

puts "enter numbers to be sorted separated by a comma"
numbers = gets
numbers = numbers.split(',')

numbers.each do |number|
  numbers[numbers.index(number)] = Integer(number)
end

sorted = merge_sort(numbers)
puts "sorted sequence using merge sort is "
sorted.each do |num|
  print "#{num} "
end
