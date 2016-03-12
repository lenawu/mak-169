Then /^it should send me an e\-mail$/ do 
  @email = ActionMailer::Base.deliveries.last
  @email.to.should include "mina.han@gmail.com"
end