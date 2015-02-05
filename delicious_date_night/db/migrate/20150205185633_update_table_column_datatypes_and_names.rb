class UpdateTableColumnDatatypesAndNames < ActiveRecord::Migration
  def change
  	rename_column :dates, :date_occured, :date_occurred
  end

  def up
  	change_column :couples, :a_fname, :string
  	change_column :couples, :picture_url, :text
  	change_column :foods, :cuisine, :string
  end

  def down
  	change_column :couples, :a_fname, :integer
  	change_column :couples, :picture_url, :string
  	change_column :foods, :cuisine, :integer
  end
end
