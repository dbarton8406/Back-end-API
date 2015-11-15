json.array! @list do |roomate|
 json.extract! roomate, :id, :username, :email, :admin, :name, :treasurer_id

end