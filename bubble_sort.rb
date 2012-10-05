def bubble_sort(numbers)
  size = numbers.length
  size.downto(1) do |i|
    for j in 0..(i-2) do
      if numbers[j] > numbers[j+1]
        numbers[j], numbers[j+1] = numbers[j+1], numbers[j]
      end
    end
  end
  numbers
end

puts "enter numbers to be sorted separated by a comma"
numbers = gets
numbers = numbers.split(',').map { |number| Integer(number) }

sorted = bubble_sort(numbers)
puts "sorted sequence using bubble sort is "
sorted.each do |num|
  print "#{num} "
end
