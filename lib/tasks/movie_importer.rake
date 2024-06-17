require 'csv'

namespace :movies do
  desc 'Importing the movies from the csv'
  task import: :environment do
    csv = File.read('db/data/movies.csv')

    CSV.parse(csv, headers: true).each do |row|
      movie = Movie.create_or_find_by(name: row['Movie'], description: row['Description'], year: row['Year'])
      actor = Actor.create_or_find_by(name: row['Actor'])
      director = Director.create_or_find_by(name: row['Director'])
      filming_location = FilmingLocation.create_or_find_by(name: row['Filming location'],
                                                           country: Country.create_or_find_by(name: row['Country']))
      movie.actors << actor unless movie.actors.include?(actor)
      movie.directors << director unless movie.directors.include?(director)
      movie.filming_locations << filming_location unless movie.filming_locations.include?(filming_location)
    end
  end
end
