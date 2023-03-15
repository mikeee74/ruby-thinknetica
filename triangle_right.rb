puts 'Введите первую сторону треугольника:'
first = gets.to_i

puts 'Введите вторую сторону треугольника:'
second = gets.to_i

puts 'Введите третью сторону треугольника:'
third = gets.to_i

sides = [first, second, third]
highest_side = sides.max
other_sides = sides.map(&:clone)
other_sides.delete_at(other_sides.index(highest_side))

is_right = 
        other_sides[0]**2 + other_sides[1]**2 == highest_side**2 ? '' : 'не'

puts "Данный треуголник #{is_right} является прямоугольником"

is_isosceles = false

sides.each { |side| is_isosceles = true if sides.count(side) >= 2 }

puts "Данный треугольник#{is_isosceles ? '' : ' не'} является равнобедренным"

is_equilateral = (sides - [sides[0]]).length == 0

puts "Данный треугольник#{is_equilateral ? '' : ' не'} является равносторонним"
