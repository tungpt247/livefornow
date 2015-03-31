Given(/^I am logged$/) do
  @user = FactoryGirl.create(:user)
  sigin_in_as!(@user)
end

Given(/^I am on the post page$/) do
  visit "/posts/new"
end

When(/^I fill in "(.*?)" with "(.*?)"$/) do |arg1, arg2|
  fill_in(arg1, :with => arg2)
end
