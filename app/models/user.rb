#require_relative '../helper_methods/support_module'

class User < ActiveRecord::Base
#include Slugs
  has_many :tweets
  has_many :genres, through: :tweets

  has_secure_password

  def slug
    self.username.downcase.gsub(" ", "-")
  end

  def self.find_by_slug(slug)
    User.all.find {|user| user.slug == slug}
  end

end