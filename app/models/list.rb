class List < ApplicationRecord
  # Validation: List has a name
  validates :name, presence: true

  # Validation: Name is unique
  validates :name, uniqueness: true

  # Association: List has many bookmarks
  has_many :bookmarks, dependent: :destroy

  # Association: List has many movies through bookmarks
  has_many :movies, through: :bookmarks

  # Callback: Destroy child saved movies when destroying self
  before_destroy :destroy_child_saved_movies

  private

  def destroy_child_saved_movies
    # Assuming you have a method to destroy child saved movies.
    # Replace this with your actual implementation.
    movies.destroy_all
  end
end
