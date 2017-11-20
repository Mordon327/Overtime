@user = User.create!(
	email: "test@test.com",
	first_name: "Testing",
	last_name: "Tester",
	password: "asdfasdf",
	password_confirmation: "asdfasdf",
	)

puts "Created one user named 'Testing Tester'"

AdminUser.create(email: "admin@test.com", password: "asdfasdf", password_confirmation: "asdfasdf", first_name: "Admin", last_name: "Name")
puts "Created one admin user named Admin Name"

100.times do |post|
	
	Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id)
end
puts "100 posts created"