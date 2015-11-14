class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
    	t.string :content, null: false
    	t.integer :treasurer_id
    	t.integer :roomate_id
    	t.integer :post_id
      t.timestamps null: false
    end
  end
end
