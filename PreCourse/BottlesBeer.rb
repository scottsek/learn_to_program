#99 Bottles of Beer
number_bottles = 99
while number_bottles > 0
  puts number_bottles.to_s + ' bottles of beer on the wall, ' + number_bottles.to_s + ' bottles of beer.'
  puts 'Take one down, pass it around, ' + (number_bottles-1).to_s + ' bottles of beer on the wall.'
  number_bottles = number_bottles-1
end
