class CreateInvites < ActiveRecord::Migration
  def change
    create_table :invites do |t|
      t.integer :invite_status_id
      t.integer :position_id
      t.integer :event_id

      t.timestamps
    end
  end
end
