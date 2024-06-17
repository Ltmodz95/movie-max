require 'csv'

namespace :reviews do
  desc 'Importing the revies from the csv'
  task import: :environment do
    csv = File.read('db/data/reviews.csv')

    CSV.parse(csv, headers: true).each do |row|
      movie = Movie.find_by(name: row['Movie'])
      continue unless movie
      reviewer = Reviewer.create_or_find_by(name: row['User'])
      Review.create(comment: row['Review'], rate: row['Stars'], movie:, reviewer:)
    end
  end
end
