class TweetGenre < ActiveRecord::Base

  belongs_to :tweet
  belongs_to :genre
end