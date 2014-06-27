movies = {
    Godzilla: 4
}

puts "Welcome to the Movie Database! Please make one of the following choices"

puts "To add a movie, type 'add' "
puts "To update a movie, type 'update' "
puts "To display all movies, type 'display' "
puts "To delete a movie, type 'delete' "
choice = gets.chomp

case choice
    when "add"
        puts "please enter a movie title"
        title = gets.chomp
        if movies[title.to_sym].nil?
        puts "please rate the movie"
        rating = gets.chomp
        movies[title.to_sym] = rating.to_i
            puts "#{title} was added to the database with a rating of #{rating}"
        else
        puts "#{title} is already in the database"
        end
    
    when "update"
        puts "What movie would you like to update?"
        title = gets.chomp
        if movies[title.to_sym].nil?
            puts "#{title} is not in the database"
        else
            puts "Please enter a new rating for #{title}"
            rating= gets.chomp
            movies[title.to_sym] = rating.to_i
            puts "#{title} has been added with a rating of #{rating}."
        end
    when "display"
       movies.each {|title, rating| puts "#{title}: #{rating}"}
        
    when "delete" 
        puts "What movie would you like to remove?"
        title=gets.chomp
        if movies[title.to_sym].nil?
            puts "#{title} is not in the database"
        else
            movies.delete(title.to_sym)
            puts "#{title} has been deleted"
        end
    else
    puts "Error!"
end