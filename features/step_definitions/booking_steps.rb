Then /^I can book time$/ do
  fill_in 'booking_time', with: 3
  fill_in 'booking_email', with: 'Joe Client'
  fill_in 'booking_description', with: 'I need you to do some awesome stuff for me'
  page.find('[name=commit]').click
end

Then /^I see the booking$/ do
  page.should have_content '3 hours'
  page.should have_content 'Joe Client'
  page.should have_content 'I need you to do some awesome stuff for me'
end
