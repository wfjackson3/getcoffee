class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.datetime :date
      t.string :address
      t.string :city
      t.string :state
      t.integer :event_tag_id
      t.integer :event_status_id

      t.timestamps
    end
  end
end
