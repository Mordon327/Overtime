@employee = Employee.create!(
	email: "test@test.com",
	first_name: "Testing",
	last_name: "Tester",
	password: "asdfasdf",
	password_confirmation: "asdfasdf",
	phone: "8018574399",
	)

puts "Created one employee named 'Testing Tester'"

@admin = AdminUser.create(
		email: "admin@test.com", 
		password: "asdfasdf", 
		password_confirmation: "asdfasdf", 
		first_name: "Admin", 
		last_name: "Name",
		phone: "8018574399",
		)
puts "Created one admin user named Admin Name"

100.times do |post|
	Post.create!(
		date: Date.today, 
		rationale: "#{post} rationale content content Lorem ipusum dolor sit amet, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, ", 
		user_id: @employee.id, 
		overtime_request: 2.5,
		)
end
puts "100 posts created"

100.times do |audit_log|
	AuditLog.create!(user_id: User.last.id, status: 0, start_date: (Date.today - 6.days))
end
puts "100 audit logs have been created."

15.times do |post|
	Post.create!(
		date: Date.today, 
		rationale: "#{post} rationale content", 
		user_id: @admin.id, 
		overtime_request: 2.5,
		)
end
puts "15 admin posts created"

AuditLog.create!(user_id: @employee.id, status: 0, start_date: (Date.today - 6.days))
AuditLog.create!(user_id: @employee.id, status: 0, start_date: (Date.today - 13.days))
AuditLog.create!(user_id: @employee.id, status: 0, start_date: (Date.today - 20.days))

puts "3 audit logs have been created"