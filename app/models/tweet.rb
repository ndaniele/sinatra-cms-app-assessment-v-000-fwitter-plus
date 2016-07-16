class Tweet < ActiveRecord::Base

  belongs_to :user
  has_many :tweet_genres
  has_many :genres, through: :tweet_genres
  
end