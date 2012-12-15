def insertion_sort(numbers, size)
  for j in 1..(size-1)
    key = numbers[j]
    i = j-1
    while i>0 && numbers[i]>key
      numbers[i+1] = numbers[i]
      i = i-1
    end
    numbers[i+1] = key
  end
  numbers
end

puts "enter numbers to be sorted separated by a comma"
numbers = gets
numbers = numbers.split(',').map { |number| Integer(number) }

sorted = insertion_sort(numbers, numbers.length)
puts "sorted sequence using insertion sort is "
sorted.each do |num|
  print "#{num} "
end
