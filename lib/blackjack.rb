require 'pry'

def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  num = rand(1..11)
end

def display_card_total(card)
  # code #display_card_total here
  puts "Your cards add up to #{card}"
  card
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  card_total=deal_card + deal_card
  display_card_total(card_total)
end

def hit?(current_card_total)
  prompt_user
  user_input = get_user_input
  if user_input=="s"
    current_card_total
  elsif user_input=="h"
    x = deal_card
    updated_card_total=x+current_card_total
    display_card_total(updated_card_total)
  else
    invalid_command
    prompt_user
    get_user_input
  end
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner 
  sum =initial_round
  while sum<21 do
  welcome
  sum = hit?(sum)
  end
  end_game(sum)
end
    
# binding.pry
# 0