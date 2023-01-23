# DO : should echo a word 
def echo(word)
      return word
end 

# DO : shout echo (in capitalize) a word 
def shout(word)
      return word.upcase
end 

# DO
    # Wait a second! How can you make the "repeat" method
    # take one *or* two arguments?
    #
    # Hint: *default values* https://www.skorks.com/2009/08/method-arguments-in-ruby/

def repeat(word, number = 2)
      return "#{(word + " ") * (number-1) + word }"
end

# DO : returns the first number letters
def start_of_word(word, number)
      return word[0..number-1]
end

# DO : tells us the first word
def first_word(word)
      return word.split(" ")[0]
end

# DO : capitalizes word with fucking annoying execption 
def titleize(word)
      littleWords = ["end", "and", "the"]
      split_text = word.split(" ")
      block = split_text.map{ |item| littleWords.include?(item) } 
      block[0] = false #does capitalize 'little words' at the start of a title
      
      output = []
      for index in 0..(split_text.size()-1)
        if block[index] == false then
          output.append(split_text[index].capitalize)
        else
          output.append(split_text[index])
        end
      end
      return output.join(" ")
    end
