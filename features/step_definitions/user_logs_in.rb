Given(/^there is a user with email "(.*?)" and password "(.*?)"$/) do |email, password|
  User.create!(email: email, password: password, password_confirmation: password)
end

When(/^I login as "(.*?)" with password "(.*?)"$/) do |user_email, password|
  fill_in('Email', with: user_email)
  fill_in('Password', with: password)
  click_button('Login')
end

When(/^I go to \/login$/) do
  visit('/login')
end

Then(/^I should be redirected to the homepage$/) do
  expect(current_path).to eq(root_path)
end

Then(/^I should see an alert on the login page$/) do
  expect(page).to have_content('invalid')
end
