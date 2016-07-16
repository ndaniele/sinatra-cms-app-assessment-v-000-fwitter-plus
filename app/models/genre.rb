require_relative '../helper_methods/support_module'

class Genre < ActiveRecord::Base
  include Slugs

  has_many :users, through: :tweets
  has_many :tweet_genres
  has_many :tweets, through: :tweet_genres
end