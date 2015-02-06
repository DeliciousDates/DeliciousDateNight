class AddPictureUrlToFoodDrinkAndActivity < ActiveRecord::Migration
  def change
  	add_column :foods, :picture_url, :text
  	add_column :drinks, :picture_url, :text
  	add_column :activities, :picture_url, :text
  end
end
