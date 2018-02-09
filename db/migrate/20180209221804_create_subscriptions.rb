class CreateSubscriptions < ActiveRecord::Migration[5.1]
  def change
    create_table :subscriptions do |t|
      t.integer :event_id
      t.integer :attendee_id

      t.timestamps
    end
  end
end
