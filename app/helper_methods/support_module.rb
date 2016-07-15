module Slugs #include

  module InstanceMethods #include
    def slug
      #binding.pry
      self.name.gsub(/\s/,'-').downcase
      #self.name.split(" ").join("-")
    end
  end

  module ClassMethods #extend
    def find_by_slug(slug)
      self.all.find{|instance| instance.slug == slug}
    end
  end
 
 def self.included(receiver)
    receiver.extend ClassMethods
    receiver.send :include, InstanceMethods
  end
end

#  def slug
#    self.username.downcase.gsub(" ", "-")
#  end
#
#  def self.find_by_slug(slug)
#    User.all.find {|user| user.slug == slug}
#  end