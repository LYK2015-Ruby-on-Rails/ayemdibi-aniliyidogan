class Actor < ActiveRecord::Base

  extend FriendlyId
  friendly_id :name, use: :slugged

  has_many :actor_directors
  has_many :directors, through: :actor_directors


  has_many :actor_movies
  has_many :movies, through: :actor_movies

end
