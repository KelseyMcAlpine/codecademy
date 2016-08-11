# changes each "s" in the user's input to "th" to make it sounds like daffy duck

print "Want to thound ath cool ath Daffy Duck?"
print "Enter a thtring pleathe:"
user_input = gets.chomp
user_input.downcase!

if user_input.include? "s"
    user_input.gsub!(/s/, "th")
    puts "Congratulationth! Your Daffy Duckified text ith here: \n #{user_input}"
else
    print "lookth like there ithn't any fun wordth to thay here."
end
