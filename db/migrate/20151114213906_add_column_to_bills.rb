class AddColumnToBills < ActiveRecord::Migration
  def change
  	add_column :bills, :assignee, :string
  end
end
