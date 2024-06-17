class Director < User
  has_many :roles
  has_many :movies, through: :roles
end
