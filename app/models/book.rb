class Book < ApplicationRecord
  belongs_to :author
  has_many :books_genre
  has_many :genres, through: :books_genres
  #this means a book has many genres through books_genres and without line 3 , line 4 will not work
end
