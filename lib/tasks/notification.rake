namespace :notification do
  desc "Sends SMS notification to employees asking them to log if they had overtime."
  task sms: :environment do
  	if Time.now.sunday?
      employees = Employee.all
      notification_message = "Please log into the overtime management dashboard to request overtime or confirm your hours for last week: https://soderstrom-overtime.herokuapp.com/"
      employees.each do |employee|
        AuditLog.create!(user_id: employee.id)
        SmsTool.send_sms(number: employee.phone, message: notification_message)
      end
    end
  end
  desc "Sends mail notification to managers (admin users) each day to inform of pending overtime requests."
  task manager_email: :environment do
    admin_users = AdminUser.all
    submitted_posts = Post.submitted

    if submitted_posts.count > 0
      admin_users.each do |admin|
        ManagerMailer.email(admin).deliver_later
      end
    end
  end
end
