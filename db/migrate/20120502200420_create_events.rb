class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.datetime :date
      t.string :address
      t.string :city
      t.string :state
      t.integer :type
      t.integer :status

      t.timestamps
    end
  end
end
