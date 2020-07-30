def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(cardTotal)
  puts "Your cards add up to #{cardTotal}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(cardTotal)
  puts "Sorry, you hit #{cardTotal}. Thanks for playing!"
end

def initial_round
  sum = deal_card + deal_card
  display_card_total(sum)
  sum
end

def hit?(cardTotal)
  prompt_user
    user_input = get_user_input
      if user_input == 's'
        cardTotal
      elsif user_input == 'h'
        cardTotal += deal_card
      else
        invalid_command
      hit?(cardTotal)
      end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # welcome -> initial_round -> hit or stay? -> if stay prompt_user ->if hit? deal_card && display_card_total -> if cardTotal > 21 end_game

  welcome
  hand_cards = initial_round
  while hand_cards < 21
    cardDealt = hit?(hand_cards)
    display_card_total(hand_cards)
  end 
  end_game(hand_cards)
end 

  