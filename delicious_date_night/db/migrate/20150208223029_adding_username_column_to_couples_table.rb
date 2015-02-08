class AddingUsernameColumnToCouplesTable < ActiveRecord::Migration
  def change
  	add_column :couples, :username, :string
  end
end
