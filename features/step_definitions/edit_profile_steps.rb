Before do
  @user = User.new(name: "Teste", email: "teste@gmail.com", password: "123123", email_confirmed: true)
  @user.save
end

Given(/^I am logged into the application$/) do
  visit '/'
  fill_in "user_email" , :with => "teste@gmail.com"
  fill_in "user_password", :with => "123123"
  click_button "submit"
end

Given(/^is on the profile editing page$/) do
  visit '/users/1/edit'
end


Given(/^fill in all fields correctly$/) do
  fill_in "user_name" , :with => "Teste2"
  fill_in "user_email" , :with => "teste2@gmail.com"
  fill_in "user_password", :with => "123123"
  fill_in "user_password_confirmation", :with => "123123"
end

Given(/^fill in all fields correctly  except the name field$/) do
  fill_in "user_email" , :with => "teste@gmail.com"
  fill_in "user_password", :with => "123123"
  fill_in "user_password_confirmation", :with => "123123"
end

Given(/^fill in all fields correctly  except the email field$/) do
  fill_in "user_name" , :with => "Teste"
  fill_in "user_password", :with => "123123"
  fill_in "user_password_confirmation", :with => "123123"
end

Given(/^fill in all fields correctly  except the password field$/) do
  fill_in "user_name" , :with => "Teste"
  fill_in "user_email" , :with => "teste@gmail.com"
  fill_in "user_password_confirmation", :with => "123123"
end

Given(/^fill in all fields correctly  except the password confirmation field$/) do
  fill_in "user_name" , :with => "Teste"
  fill_in "user_email" , :with => "teste@gmail.com"
  fill_in "user_password", :with => "123123"
end

When(/^I click in button "([^"]*)"$/) do |arg1|
  click_button "submit"
end

Then(/^I should see the message "([^"]*)"$/) do |arg1|
  expect(page).to have_content(arg1)
end
