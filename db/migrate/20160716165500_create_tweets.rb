class CreateTweets < ActiveRecord::Migration
  def change
      create_table :tweets do |t|
      t.string :content
      t.string :genre
      t.integer :user_id
    end
  end
end
