# player_score = computer_score = ties = 0
# while player_score < 5 && computer_score < 5

puts "Welcome to Rock, Paper, Scissors!"
puts "Press r for Rock"
puts "Press p for Paper"
puts "Press s for Scissors"

player = gets.chomp.downcase

computer = "rps" [rand(3)].chr

case [player, computer]
	when ["p","r"], ["s","p"], ["r","s"]
		puts "You win!"
		# player_score = player_score + 1

	when ["r","r"], ["p","p"], ["s","s"]
		puts "You tied!"
	else
		puts "You lose!"
		# computer_score = computer_score + 1
	end

puts "The computer chose #{computer}."
exit

