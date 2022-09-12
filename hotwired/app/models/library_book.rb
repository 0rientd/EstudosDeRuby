class LibraryBook < ApplicationRecord
  broadcasts_to ->(library_book) { 'library_books' }, target: :library_books
end
