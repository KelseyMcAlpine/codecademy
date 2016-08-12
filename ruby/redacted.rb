# user inputs string
# converts user's input to lowercase
puts "Text please:"
text = gets.chomp.downcase

# user inputs word to be redacted from previous string
# converts user's input to lowercase
puts "Redact please:"
redact = gets.chomp.downcase

# uses the .split method to tell ruby to convert string to an array, dividing the text wherever it sees a space (" ") 
words = text.split(" ")

# uses the .split method to tell ruby to convert a srting to an array, dividing the text weherver it sees a (" ")
eval = redact.split(" ")

# for each word, ruby checks to see if the word = the redacted word.
# if the word = the redacted word, ruby will print REDACTED
# if the word has not been redacted it will add a space between the words
words.each do |word|
    if eval.include? word 
        print "REDACTED "
    else 
        print word + " "
    end
end
