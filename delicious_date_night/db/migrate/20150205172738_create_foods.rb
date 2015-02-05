class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.integer :cuisine

      t.timestamps
    end
  end
end
