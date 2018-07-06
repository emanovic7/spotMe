class User < ApplicationRecord

  has_many :workouts_users
  has_many :workouts, through: :workouts_users
  has_many :exercises

end
