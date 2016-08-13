puts "Input your text here: "
text = gets.chomp
words = text.split(" ")
frequencies = Hash.new(0)
words.each {|word| frequencies[word] += 1}
frequencies = frequencies.sort_by {|word, frequency| frequency}
frequencies.reverse!
frequencies.each do |word, frequency| 
    puts word + " " + frequency.to_s
end
