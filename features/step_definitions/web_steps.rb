Given(/^that I am on the homepage$/) do
  visit '/'
end

When(/^I follow "(.*?)"$/) do |link|
  click_link(link)
end

Then(/^I can see "(.*?)"$/) do |text|
  expect(page).to have_content(text)
end

Given(/^that I am on the startgame page$/) do
  visit 'start_game'
end

When(/^I enter in "(.*?)"$/) do |player|
  fill_in('name', :with => player)
end

When(/^I press "(.*?)"$/) do |button|
  click_on(button)
end

Then(/^the game begins$/) do
  expect(page).to have_content("Play")
end
