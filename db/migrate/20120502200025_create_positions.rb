class CreatePositions < ActiveRecord::Migration
  def change
    create_table :positions do |t|
      t.integer :friend_id
      t.boolean :archive

      t.timestamps
    end
  end
end
