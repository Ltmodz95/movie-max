class Role < ApplicationRecord
  belongs_to :actor, class_name: 'User', foreign_key: 'user_id'
  belongs_to :director, class_name: 'User', foreign_key: 'user_id'
  belongs_to :movie
end
