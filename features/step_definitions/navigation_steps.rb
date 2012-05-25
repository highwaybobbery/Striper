Given /^I am on the homepage$/ do
  visit root_path
end

When /^I visit the booking page$/ do
  step 'I am on the homepage'
  page.find('[data-role=booking-link]').click
end
