def grandfather_clock &block
  hours = Time.new.hour
  hours_to_dong = hours % 12
  if hours_to_dong == 0 then hours_to_dong = 12
  hours_to_dong.times do
    block.call
  end
end
grandfather_clock do
  puts "Dong"
end