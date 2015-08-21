class Movie < ActiveRecord::Base

  ratyrate_rateable "movie"

  extend FriendlyId
  friendly_id :name, use: :slugged



  has_many :category_movies
  has_many :categories, through: :category_movies

  has_many :director_movies
  has_many :directors, through: :director_movies

  has_many :actor_movies
  has_many :actors, through: :actor_movies

  has_attached_file :image, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  has_attached_file :full_image, default_url: "default.png"
  validates_attachment_content_type :full_image, :content_type => /\Aimage\/.*\Z/

end
