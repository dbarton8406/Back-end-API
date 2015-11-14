class CreateRoomates < ActiveRecord::Migration
  def change
    create_table :roomates do |t|
    	t.string :living_space
    	t.string :username, null: false
    	t.string :email, null: false
    	t.string :name 
    	t.boolean :admin, default: false
    	t.string :password_digest
    	t.string :access_token, null: false
    	t.integer :treasurer_id
      t.timestamps null: false
    end
  end
end
