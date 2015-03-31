Given(/^I am on Homepage$/) do
  visit "/"
end

Then(/^I should be able to see "(.*?)" printed on screen$/) do |arg1|
  expect(page).to have_content("Hello World")
  expect(page).to have_link("XXX")
  expect(page).to have_section
end
