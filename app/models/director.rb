class Director < ActiveRecord::Base

  extend FriendlyId
  friendly_id :name, use: :slugged

  has_many :actor_directors
  has_many :actors, through: :actor_directors

  has_many :director_movies
  has_many :movies, through: :director_movies

end
