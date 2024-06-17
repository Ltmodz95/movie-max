class Movie < ApplicationRecord
  has_many :roles
  has_many :actors, through: :roles
  has_many :directors, through: :roles
end
