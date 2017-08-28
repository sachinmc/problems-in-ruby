# contacts.rb
# populate the contacts with the right contact_data

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"], ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

# creating fields array
fields = [:email, :address, :phone]

count = 0

fields.each do |val|
  contacts.each_key {|k| contacts[k][val] = ""}
end

contacts.each_value do |val|
  val.each_key do |k|
    val[k] = contact_data.flatten[count]
    count += 1
  end
end

p contacts
