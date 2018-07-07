class Workout < ApplicationRecord

  # has_many :workouts_users
  # has_many :users, through: :workouts_users
  has_many :exercises
  belongs_to :user

end
