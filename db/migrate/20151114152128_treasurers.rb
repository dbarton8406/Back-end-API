class Treasurers < ActiveRecord::Migration
  def change
  	add_column :treasurers, :access_token, :string
  	remove_column :treasurers, :acces_token
  end
end
