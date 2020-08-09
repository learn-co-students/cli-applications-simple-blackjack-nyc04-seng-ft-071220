require 'pry'
def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(player_card_total)
  puts "Your cards add up to #{player_card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(player_card_total)
  puts "Sorry, you hit #{player_card_total}. Thanks for playing!"
end

def initial_round
  sum = deal_card + deal_card
  display_card_total(sum)
  sum
end

def hit?(player_card_total)
  prompt_user
  input = get_user_input
  # binding.pry
  if input == 'h'
    num = deal_card
    player_card_total += num
    display_card_total(player_card_total)
  elsif input == 's'
  else
    invalid_command
  end
  player_card_total
end

def invalid_command
  puts "Please enter a valid command"
end


#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  player_card_total = initial_round
  # binding.pry()
  while player_card_total < 21 do
    player_card_total = hit?(player_card_total)
  end
  if player_card_total > 21
    end_game(player_card_total)
  end
end
    
# binding.pry