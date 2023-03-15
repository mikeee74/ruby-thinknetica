puts 'Введите первый коэффициент:'
a = gets.to_i

puts 'Введите второй коэффициент:'
b = gets.to_i

puts 'Введите третий коэффициент:'
c = gets.to_i

d = b**2 - 4*a*c

if d < 0
  puts 'Корней нет!'
elsif d == 0
  first = (-b + Math.sqrt(d)) / (2*a)
  puts "Дискриминант: #{d}; Корень: #{first}"
else
  first = (-b + Math.sqrt(d)) / (2*a)
  second = (-b - Math.sqrt(d)) / (2*a)
  puts "Дискриминант: #{d}; Корень #1: #{first}; Корень #2: #{second}"
end
