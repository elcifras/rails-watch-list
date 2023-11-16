class Movie < ApplicationRecord
  # Validation: Movie has a title
  validates :title, presence: true

  # Validation: Title is unique
  validates :title, uniqueness: true

  # Validation: Overview cannot be blank
  validates :overview, presence: true

  # Association: Movie has many bookmarks
  has_many :bookmarks

end
