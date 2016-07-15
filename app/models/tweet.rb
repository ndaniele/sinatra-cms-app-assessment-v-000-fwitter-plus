class Tweet < ActiveRecord::Base

  belongs_to :user
  has_many :tweet_types
  has_many :types, through: :tweet_types
  
end