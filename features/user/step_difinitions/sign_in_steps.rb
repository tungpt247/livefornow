Given(/^I am authorized user$/) do
  @user = FactoryGirl.create(:user)
end

Given(/^I am on login page$/) do
  visit "/users/sign_in"
end

When(/^I fill in:$/) do |table|
  # table is a Cucumber::Ast::Table
  table = table.raw
  table.each do |row|
    pp "user[#{row[0]}]"
    fill_in("user[#{row[0]}]", :with => row[1])
  end
end

When(/^I press "(.*?)" button$/) do |button|
  click_on(button)
end

Then(/^The url should redirect to root$/) do
  expect(page.current_path).to eq('/')
end

Then(/^I see "(.*?)"$/) do |message|
  expect(page).to have_content(message)
end
