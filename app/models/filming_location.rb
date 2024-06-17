class FilmingLocation < ApplicationRecord
  belongs_to :country
  has_many :movie_filming_locations
  has_many :movies, through: :movie_filming_locations
end
