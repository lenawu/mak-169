def login_using(email, pass)
    visit new_user_session_path
    fill_in 'Email', :with => email
    fill_in 'Password', :with => pass
    click_button 'Log_in'
end

Given /I should be logged in$/ do
    @user = create(:user)
    login_using(@user.email, @user.password)
end

Given /I should be logged in as an admin$/ do
    fail "Unimplemented"
end

Given /I am signed out$/ do
    visit logout_path
end