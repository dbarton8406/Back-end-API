class RemoveTokenColumnFromRoomates < ActiveRecord::Migration
  def change
  	remove_column :roomates, :access_token
  end
end
