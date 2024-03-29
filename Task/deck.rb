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

  def displayCard
    @arr.each { |card| puts "#{card.num} of #{card.face}" }
  end

  def shuffle
    @arr.shuffle!
    # @arr.each { |card| puts "#{card.num} of #{card.face}" }
    puts "\nDeck Shuffled"
  end

  def shiftCard
    removed = @arr.shift
    @arr.each { |card| puts "#{card.num} of #{card.face}" }
    puts "Removed Card is #{removed.num} of #{removed.face}"
  end
end

class Game
end

puts "Welcome to the IN-between game"

deck = Deck.new
puts "Initial deck:"
deck.displayCard

puts "\nShuffling deck..."
deck.shuffle


# puts "\nAfter shifting cards:"
# deck.shiftCard
