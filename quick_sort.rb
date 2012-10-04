def quick_sort(numbers, size)
  return numbers if size < 2
  pivot = numbers[size/2]
  lower = 0
  upper = size-1
  while lower < upper
    while numbers[lower] < pivot
      lower = lower + 1
    end
    while numbers[upper] > pivot
      upper = upper - 1
    end
    numbers[lower], numbers[upper] = numbers[upper], numbers[lower]
  end
  part_one = quick_sort(numbers[0..lower], lower)
  part_two = quick_sort(numbers[(lower+1)..-1], size-lower-1)
  part_one + part_two
end

puts "enter numbers to be sorted separated by a comma"
numbers = gets
numbers = numbers.split(',').map { |number| Integer(number) }

sorted = quick_sort(numbers, numbers.length)
puts "sorted sequence using quick sort is "
sorted.each do |num|
  print "#{num} "
end
