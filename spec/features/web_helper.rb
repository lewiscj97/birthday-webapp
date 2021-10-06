def enter_birthdays_and_result
  visit('/')
  fill_in 'name', with: 'Lewis'
  fill_in 'day', with: 18
  select "March", from: "month"
  click_button 'Go!'
end