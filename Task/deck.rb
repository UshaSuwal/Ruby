
class Deck
    def initialize
        @arr=[]
        num= ["2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K", "A"]
        sym= ["Hearts", "Diamonds", "Clubs", "Spades"]
        sym.each do |i|
            num.each do |j|
                @arr<<i.dup.concat(j)
                
            end
        end
    end

    def displayCard
        puts @arr
    end

    def suffleCard
        @arr.shuffle!
        puts @arr
    end

    def shiftCard
        @arr.shift
        puts @arr
    end

end


deck=Deck.new
deck.displayCard

puts "After shuffle:"
deck.suffleCard

puts "After Shift:"
deck.shiftCard





#         arr=[]

#         sym=["club","diamond","spade","heart"]
#         sym.each do |j|
#             2.upto(10) do |i|
#                 str=i.to_s
#                 arr<< str.concat(j)
#             end
#             arr<< (j.dup.concat(" A"))
#             arr<< (j.dup.concat(" J"))
#             arr<< (j.dup.concat(" K"))
#             arr<< (j.dup.concat(" Q"))
#         end