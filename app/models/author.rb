class Author < ApplicationRecord
    has_one :adress, dependent: :destroy
    has_many :books, dependent: :destroy
end
