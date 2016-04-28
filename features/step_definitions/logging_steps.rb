def login_using(email, pass)
    visit new_user_session_path
    fill_in 'Email', :with => email
    fill_in 'Password', :with => pass
    click_button 'Log_in'
end

Given /^I am currently on (.+)$/ do |page_name|
    visit path_to(page_name)
end

Given /^I am on the project page$/ do
    visit path_to(projects)
end

Given /I should be logged in$/ do
    # if page.respond_to? :should
    #     page.should have_content("Log out")
    # else
    #     assert page.has_content?("Log out")
    # end
    # if page.respond_to? :should
    #     page.should have_no_content("Sign Up")
    # else
    #     assert page.has_no_content?("Sign Up")
    # end
    regexp = Regexp.new("Log Out")
    if page.respond_to? :should
        page.should have_xpath('//*', :text => regexp)
    else
        assert page.has_xpath('//*', :text => regexp)
    end
end

Given /I should be logged in as an admin$/ do
    fail 'Unimplemented'
end

Given /I am signed out$/ do
    visit destroy_user_session_path
end

Then /^(?:|I )should be on "([^"]*)$/ do |text|
    if page.respond_to? :should
        page.should have_content(text)
    else
        assert page.has_content?(text)
    end
end