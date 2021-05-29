def get_selection(player_num)
  valid_selections = ["Rock", "Paper", "Scissors"]
  valid = false
  begin 
    print "Player #{player_num} - Enter your selection: "
    selection = gets.chomp
    if valid_selections.include? selection
      valid = true
    else
      puts "No cheaters! Only Rock, Paper or Scissors are allowed."
      exit
    end
  end until valid
  return selection
end

def compute_result(selection_1, selection_2)
  if (selection_1 == "Rock" && selection_2 == "Paper") || (selection_1 == "Paper" && selection_2 == "Rock")
    puts "Paper covers rock."
  elsif (selection_1 == "Paper" && selection_2 == "Scissors") || (selection_1 == "Scissors" && selection_2 == "Paper")
    puts "Scissors cuts paper."
  elsif (selection_1 == "Scissors" && selection_2 == "Rock") || (selection_1 == "Rock" && selection_2 == "Scissors")
    puts "Rock crushes scissors."
  else
    puts "Tie!"
  end
end

puts "Rock Paper Scissors"
player_1_selection = get_selection("1")
player_2_selection = get_selection("2")
compute_result(player_1_selection, player_2_selection)