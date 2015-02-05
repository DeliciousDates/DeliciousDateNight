class CreateDates < ActiveRecord::Migration
  def change
    create_table :dates do |t|
      t.integer :initiator_id
      t.integer :receiver_id
      t.integer :event_id
      t.datetime :start_date
      t.string :meeting_location
      t.boolean :date_occured

      t.timestamps
    end
  end
end
