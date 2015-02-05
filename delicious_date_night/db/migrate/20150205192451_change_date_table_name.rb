class ChangeDateTableName < ActiveRecord::Migration
  def change
  	rename_table :dates, :date_nights
  end
end
