class Card
  attr_reader :face, :num

  def initialize(face, num)
    @face = face
    @num = num
  end

  def to_s
    "#{num} of #{face}"
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
      puts @arr
  end

  def shuffle
    @arr.shuffle!
    puts @arr
  end

  def shiftCard
      removed=@arr.shift
      puts @arr
      puts "Removed Card is #{removed}"
  end
end



deck = Deck.new

puts "Initial deck:"
deck.displayCard

puts "\nShuffling deck..."
deck.shuffle


puts "\nAfter shifting cards:"
deck.shiftCard

a=Card.new(1,2)





sorted_hand = hand.map { |c| c.num == 'Jack' ? 10 : c.num.to_i }.sort
      card_value = card.num == 'Jack' ? 10 : card.num.to_i
      sorted_hand[0] < card_value && card_value < sorted_hand[1]