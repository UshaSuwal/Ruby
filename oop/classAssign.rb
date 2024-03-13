############  Assignment
# Let's build a Quote class that represents a single quote with a content and author attribute.

# The public interface should consist of:
# Getter and setter methods for content and author
# An instance method called display_quote that prints out #{quote} by #{author}
# A class method called random that will print out the content of a random quote

class Quote
    attr_accessor :content, :author
    @@count=0
    @@holdContent=[]
    @@holdAuthor=[]
    def initialize(content,author)
        @content=content
        @author=author
        
        @@holdContent.push(content)
        @@holdAuthor.push(author)
    end

    def display_quote
        puts "#{@content}  -by #{@author}"
    end
     
    def self.random
        randomQuote=@@holdContent.sample
        indexQuote=@@holdContent.index(randomQuote)
        puts "#{randomQuote} -by #{@@holdAuthor[indexQuote]}"
    end


end

q1=Quote.new("Sky is blue","Rubin")
q1.display_quote

Quote.new("Plant is green","Gargie")
Quote.new("Flower is yellow","Yubin")


Quote.random




