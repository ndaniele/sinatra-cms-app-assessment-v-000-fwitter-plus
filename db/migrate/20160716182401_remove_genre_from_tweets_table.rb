class RemoveGenreFromTweetsTable < ActiveRecord::Migration
  def change
    remove_column :tweets, :genre
  end
end
