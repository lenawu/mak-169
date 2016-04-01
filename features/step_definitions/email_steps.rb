Then /^it should send me an e\-mail$/ do 
  @email = ActionMailer::Base.deliveries.last
  @email.to.should include "ankita@makelabs.org"
end

Given /^a contact form with headers is initialized$/ do
  form = ContactForm.new
  headers = form.headers
end

Given /^user mail is created and sent$/ do
  @user = User.new({:email => "test@test.test", :password => "password"})
  mail = UserMailer.welcome_email(@user).deliver_now
end
