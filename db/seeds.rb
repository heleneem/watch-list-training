# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ title: "Star Wars" }, { title: "Lord of the Rings" }])
#   Character.create(title: "Luke", movie: movies.first)

puts "Destroying database..."
Bookmark.destroy_all
Movie.destroy_all
List.destroy_all

puts "Creating movies..."
wonderwoman = Movie.create(title: "Wonder Woman 1984", description: "Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s", poster_url: "https://image.tmdb.org/t/p/original/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg", rating: 6)
redemption = Movie.create(title: "The Shawshank Redemption", description: "Framed in the 1940s for double murder, upstanding banker Andy Dufresne begins a new life at the Shawshank prison", poster_url: "https://image.tmdb.org/t/p/original/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg", rating: 8)
titanic = Movie.create(title: "Titanic", description: "101-year-old Rose DeWitt Bukater tells the story of her life aboard the Titanic.", poster_url: "https://image.tmdb.org/t/p/original/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg", rating: 7)
ocean = Movie.create(title: "Ocean's Eight", description: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.", poster_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg", rating: 7)

puts "Creating lists..."
love = List.create!(name: "Love movies")
action = List.create!(name: "Action movies")
fantasy = List.create!(name: "Fantasy movies")

puts "Creating bookmarks..."
Bookmark.create!(comment: "I highly recommend it", list: fantasy, movie: wonderwoman)
Bookmark.create!(comment: "Not a big fan, but eh", list: action, movie: redemption)

puts "Finished!"
