# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
authors = []
for i in 1..10
  author = Author.create(
    name: Faker::Book.author,
    date_of_birth: Faker::Date.birthday(18, 65)
  )
  authors.push(author)
  puts "Created #{i} authors"
end

for i in 1..50
    Book.create(
      title: Faker::Book.title,
      author_id: authors[rand(0..9)].id
    )
    puts "Created #{i} books"
end

genres = ["fantasy", "horror", "romance", "crime", "sci-fi"]

for i in genres
    Genre.create(name: i)
    puts "Created #{i} genre"
end