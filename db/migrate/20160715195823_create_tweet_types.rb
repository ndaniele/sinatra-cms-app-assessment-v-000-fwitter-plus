class CreateTweetTypes < ActiveRecord::Migration
  def change
    create_table :tweet_types do |t|
      t.integer :tweet_id
      t.integer :user_id 
    end
  end
end
