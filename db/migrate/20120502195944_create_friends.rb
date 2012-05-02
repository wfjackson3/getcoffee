class CreateFriends < ActiveRecord::Migration
  def change
    create_table :friends do |t|
      t.integer :user_id
      t.string :twitter_handle

      t.timestamps
    end
  end
end
