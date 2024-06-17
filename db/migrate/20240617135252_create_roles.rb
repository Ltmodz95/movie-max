class CreateRoles < ActiveRecord::Migration[7.1]
  def change
    create_table :roles do |t|
      t.belongs_to :user
      t.belongs_to :movie

      t.index %i[user_id movie_id]
      t.timestamps
    end
  end
end
