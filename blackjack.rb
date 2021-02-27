CARD_VALUES = {
  "A" => 1,
  "2" => 2,
  "3" => 3,
  "4" => 4,
  "5" => 5,
  "6" => 6,
  "7" => 7,
  "8" => 8,
  "9" => 9,
  "10" => 10,
  "J" => 10,
  "Q" => 10,
  "K" => 10,
}

def random_card
  values = ["2", "3", "4", "5", "6", "7",
           "8", "9", "10", "J", "Q", "K", "A"]

  suits = ["♠ ", "♥ ", "♦ ", "♣ "]

# "|" are just spacers for clearer visualisation when it puts later
  random_card = ["|"]
  random_card.push(values[rand(13)])
  random_card.push(suits[rand(4)])
  random_card.push("| ")
  return random_card
end

def move
  loop do
    puts "Do you want to 'hit' or 'stick'?"
    move = gets.chomp.downcase
    if (move == 'hit' || move == 'stick')
      return move
    end
  end
end

def score(card_arr)
  card_values = []
  card_arr.each { |spacer1, value, suit, spacer2| card_values.push(CARD_VALUES[value]) }
  return card_values.sum
end

def dealer_score_calc
  possible_scores = [0, 0, 17, 18, 19, 20, 21]
  return possible_scores[rand(7)]
end

def run_game
  
  dealer_score = dealer_score_calc
  
  player_score = 0
  player_hand = []
       
  loop do
    if player_score > 21
      puts "You busted with: "+ player_score.to_s
      puts "Your final hand: "+ player_hand.join("")
      puts "Dealer scored: "+ dealer_score.to_s
      puts "DEALER WINS! 😢😢😢"
      break
    elsif move == "stick" 
      puts "----------------"
      puts "You scored: "+ player_score.to_s
      puts "Your final hand: " + player_hand.join("")
      puts "Dealer scored: "+ dealer_score.to_s
        if dealer_score > player_score
          puts "DEALER WINS! 😢😢😢"
        elsif dealer_score < player_score
          puts "YOU WIN! 🎉🎉🎉"
        else
          puts "IT'S A TIE"
        end
      break
    else
      player_hand.push(random_card)
      player_score = score(player_hand)
      puts "----------------"
      puts "Hand so far (score " + player_score.to_s + "):"
      puts player_hand.join("")
      puts "----------------"
    end
  end
end

puts "----------------"
puts "Welcome to Command Line Blackjack. The rules are broadly the same as standard Blackjack, but please note aces are not of variable value - they are fixed at '1'"
puts "----------------"

run_game

