class Card
    attr_reader :face, :num
  
    def initialize(face, num)
      @face = face
      @num = num
    end
  end
  
  class Deck
    attr_reader :arr
  
    def initialize
      @arr = []
      face = ['Hearts', 'Diamonds', 'Clubs', 'Spades']
      num = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen', 'King', 'Ace']
  
      face.each do |i|
        num.each do |j|
          @arr << Card.new(i, j)
        end
      end
    end
  
    def display_card
      @arr.each { |card| puts "#{card.num} of #{card.face}" }
    end
  
    def shuffle
      @arr.shuffle!
      puts "\nDeck Shuffled"
    end
  
    def shift_card
      @arr.shift
    end
  end
  
  class Player
    attr_reader :hand, :name
  
    def initialize(name)
      @name = name
      @hand = []
    end
  
    def add_card(card)
      @hand << card
    end
  
    def display_hand
      puts "#{name}'s hand:"
      @hand.each do |card| 
        puts "#{card.num} of #{card.face}" 
      end
    end
  end
  
  class Game
    def initialize(player1_name, player2_name)
      @deck = Deck.new
      @deck.shuffle
  
      @player1 = Player.new(player1_name)
      @player2 = Player.new(player2_name)
  
      # Distribute initial cards to players
      2.times do
        @player1.add_card(@deck.shift_card)
        @player2.add_card(@deck.shift_card)
      end
  
      puts "\nInitial hands:"
      @player1.display_hand
      @player2.display_hand
    end
  
    def play
      current_player = @player1
  
      while true
        puts "\nIt's #{current_player.name}'s turn."
        puts "Press enter to draw a card from the deck."
        gets.chomp
  
        drawn_card = @deck.shift_card
        puts "You drew: #{drawn_card.num} of #{drawn_card.face}"

        if current_player==@player1
          opponent=@player2
        else
          opponent=@player1
        end
        
        if between(drawn_card, current_player.hand)
          puts "#{current_player.name} wins!"
          break
        else
          puts "Not in between. Passing turn to #{opponent.name}."
          current_player = opponent
        end
      end
    end
  
    def between(card, hand)
      card_values = {
        "Jack" => 11,
        "Queen" => 12,
        "King" => 13,
        "Ace" => 1
      }

      hand_values = []
      hand.each do |c|
        if card_values.key?(c.num)
          hand_values << card_values[c.num]
        else
          hand_values << c.num.to_i
        end
      end

      card_value = card_values.key?(card.num) ? card_values[card.num] : card.num.to_i

      if card_value > hand_values.first && card_value < hand_values.last || card_value < hand_values.first && card_value > hand_values.last
      return true
      end
      
    end
    

    
  end
  
  puts "Welcome to the IN-between game"
  puts "Enter Player 1's name:"
  player1_name = gets.chomp
  puts "Enter Player 2's name:"
  player2_name = gets.chomp
  
  game = Game.new(player1_name, player2_name)
  game.play
  