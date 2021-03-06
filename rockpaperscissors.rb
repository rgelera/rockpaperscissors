def get_selection(player_num)
  valid_selections = ["Rock", "Paper", "Scissors"] # assuming player will enter correct capital letters
  valid = false
  begin 
    print "Player #{player_num} - Enter your selection: "
    selection = gets.chomp
    if valid_selections.include? selection
      valid = true
    else
      puts "No cheaters! Only Rock, Paper or Scissors are allowed."
      return 0
    end
  end until valid
  return selection
end

def compute_result(selection_1, selection_2)
  if (selection_1 == "Rock" && selection_2 == "Paper") || (selection_1 == "Paper" && selection_2 == "Rock")
    puts "Paper covers rock."
    selection_1 == "Rock" ? (return 2) : (return 1)
  elsif (selection_1 == "Paper" && selection_2 == "Scissors") || (selection_1 == "Scissors" && selection_2 == "Paper")
    puts "Scissors cuts paper."
    selection_1 == "Paper" ? (return 2) : (return 1)
  elsif (selection_1 == "Scissors" && selection_2 == "Rock") || (selection_1 == "Rock" && selection_2 == "Scissors")
    puts "Rock crushes scissors."
    selection_1 == "Scissors" ? (return 2) : (return 1)
  else
    puts "Tie!"
    return 0
  end
end

puts "Rock Paper Scissors"
winner_num = 0
NUM_TO_WIN = 2
player_1_points = 0
player_2_points = 0

until player_1_points == 2 || player_2_points == 2
  player_1_selection = get_selection("1")
  next if player_1_selection == 0
  player_2_selection = get_selection("2")
  next if player_2_selection == 0
  winner_num = compute_result(player_1_selection, player_2_selection)
  if winner_num == 1
    player_1_points += 1
  elsif winner_num == 2
    player_2_points += 1
  end
end
if player_1_points > player_2_points
  puts "Player 1 wins."
else
  puts "Player 2 wins."
end
