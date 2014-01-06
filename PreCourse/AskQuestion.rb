def ask question
while true
  puts question
  reply = gets.chomp.downcase
  if (reply == 'yes' || reply == 'no')
    if reply == 'yes'
      true
      return
    else
      false
      return
    end
    break
  else
    puts 'Please answer "yes" or "no".'
  end
end # This is what we return (true or false).
end
puts ask 'Do you like me?'