class AddTypeToTweetsTable < ActiveRecord::Migration
  def change
    add_column :tweets, :type, :string
  end
end
