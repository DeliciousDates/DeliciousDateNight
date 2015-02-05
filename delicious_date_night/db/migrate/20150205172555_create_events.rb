class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :food_id
      t.integer :drink_id
      t.integer :activity_id
      t.string :event_theme
      t.integer :couple_id
      t.integer :times_favorited

      t.timestamps
    end
  end
end
