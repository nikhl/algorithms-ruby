def power_a_number(base, exponent)
  return 1    if exponent == 0
  return base if exponent == 1
  if exponent%2 == 0
    value = power_a_number(base, (exponent/2)) * power_a_number(base, (exponent/2))
  else
    value = power_a_number(base, ((exponent-1)/2)) * power_a_number(base, ((exponent-1)/2)) * base
  end
  value
end

puts "enter base number"
base = Integer(gets)
puts "enter exponent"
exponent = Integer(gets)
value = power_a_number(base, exponent)
puts "value is #{value}"
