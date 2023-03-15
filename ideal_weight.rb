puts 'Введите свое имя:'
name = gets.chomp

puts 'Введите свой рост:'
height = gets.to_i

optimal = (height - 110) * 1.15

if optimal.negative?
  puts 'Ваш вес уже оптимальный'
else
  puts "#{name}, ваш идеальный вес: #{optimal}"
end
