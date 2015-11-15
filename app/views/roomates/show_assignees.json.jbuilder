json.array! @bills do |bill|
 json.extract! bill, :name, :total_balance, :your_balance, :company, :roomate_id, :treasurer_id, :due_date, :paid, :days_past_due, :assignee, :id

end