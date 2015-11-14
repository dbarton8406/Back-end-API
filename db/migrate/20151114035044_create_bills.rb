class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
    	t.string :name
    	t.integer :total_balance
    	t.integer :your_balance
    	t.string :company
    	t.integer :roomate_id
    	t.integer :treasurer_id
    	t.datetime :due_date
    	t.boolean :paid, default: false
    	t.integer :days_past_due
      t.timestamps null: false
    end
  end
end
