Then /^I can book time$/ do
  fill_in 'booking_time', with: 3
  fill_in 'booking_email', with: 'joe@client.co'
  fill_in 'booking_description', with: 'I need you to do some awesome stuff for me'
  fill_in 'card-number', with: 4242424242424242
  fill_in 'card-cvc', with: 123
  fill_in 'card-expiry-month', with: 12
  fill_in 'card-expiry-year', with: 2012
  page.find('[type=submit]').click
end

Then /^I see the booking$/ do
  page.should have_content '3 hours'
  page.should have_content 'joe@client.co'
  page.should have_content 'I need you to do some awesome stuff for me'
end
