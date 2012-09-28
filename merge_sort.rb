def merge(left, right)
  length = left.length + right.length
  sorted = []
  while sorted.length != length do
    if left.length == 0
      sorted = (sorted << right).flatten
    elsif right.length == 0
      sorted = (sorted << left).flatten
    elsif left[0] > right[0]
      sorted << right[0]
      right.shift
    else
      sorted << left[0]
      left.shift
    end
  end
  sorted
end

def merge_sort(numbers)
  length = numbers.length
  if length == 1
    sorted = numbers
  else
    left   = merge_sort(numbers[0..(length-1)/2])
    right  = merge_sort(numbers[((length-1)/2+1)..-1])
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
