class Category < ActiveRecord::Base

  extend FriendlyId
  friendly_id :name, use: :slugged


  has_many :category_movies
  has_many :movies, through: :category_movies

end
