class CreateDrinks < ActiveRecord::Migration
  def change
    create_table :drinks do |t|
      t.string :base_alcohol
      t.string :recommended_drink

      t.timestamps
    end
  end
end
