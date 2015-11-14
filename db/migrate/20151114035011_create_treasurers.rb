class CreateTreasurers < ActiveRecord::Migration
  def change
    create_table :treasurers do |t|
    	t.string :living_space, null: false
    	t.string :username, null: false
    	t.string :email, null: false
    	t.string :name
    	t.boolean :admin, default: true
    	t.string :password_digest 
    	t.string :acces_token, null: false
      t.timestamps null: false
    end
  end
end

