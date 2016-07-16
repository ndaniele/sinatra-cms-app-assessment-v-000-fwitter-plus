class CreateTweetGenres < ActiveRecord::Migration
  def change
      create_table :tweet_genres do |t|
      t.integer :tweet_id
      t.integer :user_id 
    end
  end
end
