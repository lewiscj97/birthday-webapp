feature 'Testing infrastructure' do
  scenario 'Can run app and check page content' do
    visit('/test')
    expect(page).to have_content 'Testing infrastructure working!'
  end
end

feature 'Home page' do
  scenario 'Displays a greeting' do
    visit('/')
    expect(page).to have_content 'Hello there!'
  end

  scenario 'Asks user for their name and birthday' do
    enter_birthdays_and_result
    expect(page).to have_content 'Success'
  end
end