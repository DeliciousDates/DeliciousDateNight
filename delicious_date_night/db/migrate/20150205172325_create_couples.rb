class CreateCouples < ActiveRecord::Migration
  def change
    create_table :couples do |t|
      t.integer :a_fname
      t.string :a_lname
      t.integer :a_age
      t.string :a_gender
      t.string :a_email
      t.string :b_fname
      t.string :b_lname
      t.integer :b_age
      t.string :b_gender
      t.string :b_email
      t.string :city
      t.string :description
      t.string :picture_url
      t.string :password_digest

      t.timestamps
    end
  end
end
