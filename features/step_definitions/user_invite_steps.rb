Then (/^I fill out the form$/) do
  fill_in 'Email', with: 'new@user.com'
  select 'Curator', from: 'Role'
  click_button 'Invite'
end
