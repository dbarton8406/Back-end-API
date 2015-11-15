json.array! @bills do |bill|
	json.extract! bill, :name, :total_balance, :your_balance, :company, :assignee, :due_date, :paid, :days_past_due

end
