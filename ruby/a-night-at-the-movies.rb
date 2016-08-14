movies = {
    "The Lion King" => 4
}

puts "What would you like to do?"
puts "-- Type 'add' to add a movie."
puts "-- Type 'update' to update a movie."
puts "-- Type 'display' to display all movies."
puts "-- Type 'delete' to delete a movie."
choice = gets.chomp.downcase

case choice
when 'add'
    puts "Please enter new movie title:"
    title = gets.chomp
    title = title.to_sym
    puts "Please enter a rating:"
    rating = gets.chomp
    rating = rating.to_i
    if movies[title.to_sym] = nil
        movies[title] = rating
    else
        puts "This movie has already been rated!"
    end
when 'update'
    puts "Plese enter the movie title you'd like to update:"
    title = gets.chomp
    title = title.to_sym
    if movies[title] = nil
        puts "This movie has not yet been rated."
    else
        puts "Please input a new rating:"
        rating = gets.chomp
        movies[title] = rating
    end
when 'display'
    movies.each { |movie, rating| puts "#{movie}: #{rating}"}
when 'delete'
    puts "Which movie would you like to delete?: "
    title = gets.chomp
    title = title.to_sym
    if movies[title] = nil
        puts "Error. This movie hasn't been rated yet!"
    else 
        movies = movies.delete(title)
    end
else
    puts "Error!"
end
