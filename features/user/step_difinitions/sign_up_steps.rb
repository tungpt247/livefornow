Given(/^I am on the signup page$/) do
  visit "/users/sign_up"
end

When(/^I fill in email with "(.*?)"$/) do |email|
  fill_in("user[email]", :with => email)
end

When(/^I fill in password with "(.*?)"$/) do |password|
  fill_in("user[password]", :with => password)
end

When(/^I fill in password confirmation with "(.*?)"$/) do |password_confirmation|
  fill_in("user[password_confirmation]", :with => password_confirmation)
end
