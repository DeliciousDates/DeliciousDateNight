class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.integer :event_id
      t.integer :couple_id

      t.timestamps
    end
  end
end
