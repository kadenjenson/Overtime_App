@user = User.create(email: "test@test.com", 
                    password: "asdfasdf", 
                    password_confirmation: "asdfasdf", 
                    first_name: "SpongeBob", 
                    last_name: "Squarepants",
                    phone: "8015182957"
                    )

puts "1 user created"

AdminUser.create(email: "admin@test.com", 
                 password: "asdfasdf", 
                 password_confirmation: "asdfasdf", 
                 first_name: "SpongeBob", 
                 last_name: "Adminpants",
                 phone: "8015182957"
                 )

puts "1 Admin created"

100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id, overtime_request: 2.5)
end

puts "100 posts have been created"

100.times do |audit_log|
    AuditLog.create!(user_id: User.last.id, status: 0, start_date: (Date.today - 6.days))
end

puts "100 audit logs were created"