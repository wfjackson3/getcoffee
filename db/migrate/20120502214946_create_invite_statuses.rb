class CreateInviteStatuses < ActiveRecord::Migration
  def change
    create_table :invite_statuses do |t|
      t.string :status

      t.timestamps
    end
  end
end
