require 'matrix'
MATRIX = Matrix[ [1,1], [1,0] ]
def fibonacci_using_matrix(nth_number)
  product = MATRIX**nth_number
  product[0,1]
end
puts "enter which fibonacci number to calculate "
nth_number = Integer(gets)
puts "Fibonacci number is #{fibonacci_using_matrix(nth_number)}"