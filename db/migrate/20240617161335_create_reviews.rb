class CreateReviews < ActiveRecord::Migration[7.1]
  def change
    create_table :reviews do |t|
      t.integer :rate
      t.string :comment
      t.belongs_to :user
      t.belongs_to :movie

      t.index %i[movie_id user_id]
      t.timestamps
    end
  end
end
