Given(/^I am on the listing post page$/) do
  visit "/posts"
end

Then(/^I should see all posts$/) do
  expect(page).to have_content("Posts")
end
