class CreateTwits < ActiveRecord::Migration
  def change
    create_table :twits do |t|
      t.string :username
      t.string :first_name
      t.string :last_name
      t.string :password_salt 
	  t.string :password_hash

      t.timestamps
    end
  end
end
