# DO : capitalizes word
def titleize(word)
  littleWords = ["end", "over", "and", "the"]
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

titleize("the bridge over the river kwai")

#("The Bridge Over the River Kwai")