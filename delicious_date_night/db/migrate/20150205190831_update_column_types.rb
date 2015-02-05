class UpdateColumnTypes < ActiveRecord::Migration
  def change
  	change_column :couples, :a_fname, :string
  	change_column :couples, :picture_url, :text
  	change_column :foods, :cuisine, :string
  end
end
