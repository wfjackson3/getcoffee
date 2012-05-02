class CreateInvites < ActiveRecord::Migration
  def change
    create_table :invites do |t|
      t.integer :status
      t.integer :position_id
      t.integer :event_id

      t.timestamps
    end
  end
end
