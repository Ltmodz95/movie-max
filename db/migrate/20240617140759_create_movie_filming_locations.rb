class CreateMovieFilmingLocations < ActiveRecord::Migration[7.1]
  def change
    create_table :movie_filming_locations do |t|
      t.belongs_to :movie
      t.belongs_to :filming_location

      t.index %i[movie_id filming_location_id]
      t.timestamps
    end
  end
end
