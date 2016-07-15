require_relative '../helper_methods/support_module'

class Type < ActiveRecord::Base
  include Slugs

  has_many :users, through: :tweets
  has_many :tweet_types
  has_many :tweets, through: :tweet_types
end