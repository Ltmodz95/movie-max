class Director < User
  has_many :roles, foreign_key: 'user_id'
  has_many :movies, through: :roles
end
