class Movie < ApplicationRecord
  has_many :roles
  has_many :movie_filming_locations
  has_many :actors, through: :roles
  has_many :directors, through: :roles
  has_many :filming_locations, through: :movie_filming_locations
end
