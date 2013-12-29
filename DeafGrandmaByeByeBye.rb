#Deaf Grandma
response_to_unshouted = 'HUH?! SPEAK UP, SONNY'
user_says=''
bye_counter=0
while bye_counter < 3
	user_says = gets.chomp
	if user_says == 'BYE' then
		bye_counter = bye_counter + 1
	else
		bye_counter = 0
		if user_says != user_says.upcase then
			puts response_to_unshouted
		else
			random_year = 1930 + rand(20)
			response_to_shouted = 'NO, NOT SINCE ' + random_year.to_s
			puts response_to_shouted #unless user_says == 'BYE'
		end
	end
end