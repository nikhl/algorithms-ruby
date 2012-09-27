def insertion_sort(numbers)
  for j in 1..Integer(numbers.length-1)
     i = j-1
     while i >= 0 and (numbers[i] > numbers[j]) do
       numbers[i], numbers[j] = numbers[j], numbers[i]
       i = i-1
       j = j-1
    end
  end
  numbers
end

numbers = []
ARGV.each do|a|
  numbers << Integer(a)
end

sorted = insertion_sort(numbers)
puts "sorted sequence in ascending order is "
sorted.each do |num|
  print "#{num} "
end
