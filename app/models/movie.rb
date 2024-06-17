class Movie < ApplicationRecord
  has_many :roles
  has_many :movie_filming_locations
  has_many :actors, class_name: 'Actor', through: :roles
  has_many :directors, class_name: 'Director', through: :roles
  has_many :filming_locations, through: :movie_filming_locations
end
