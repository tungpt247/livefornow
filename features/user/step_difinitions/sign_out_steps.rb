Given(/^I am logged in$/) do
  @user = FactoryGirl.create(:user)
  sigin_in_as!(@user)
end
When(/I press sign out button$/) do
  click_on('Sign out')
end
Then(/^redirect to Homepage$/) do
  expect(current_path).to eq '/'
end
Then(/^I should see "(.*?)"$/) do |message|
  expect(page).to have_content(message)
end
