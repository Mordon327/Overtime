User.create!(
	email: "test@test.com",
	first_name: "Testing",
	last_name: "Tester",
	password: "asdfasdf",
	password_confirmation: "asdfasdf"
	)

puts "Created one user named 'Testing Tester'"


100.times do |post|
	
	Post.create!(date: Date.today, rationale: "#{post} rationale content")
end
puts "100 posts created"