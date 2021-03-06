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
    expect(page).to have_current_path '/result'
  end
end

feature 'Birthdays' do
  context 'It is the users birthday' do
    scenario 'Wishes them happy birthday' do
      allow(Date).to receive(:today).and_return Date.new(2021, 3, 18)
      enter_birthdays_and_result
      expect(page).to have_content 'Happy Birthday Lewis!'
    end
  end

  context 'It is not the users birthday' do
    scenario 'Tells them how many days until their birthday' do
      enter_birthdays_and_result
      expect(page).to have_content 'It is your birthday in 163 days!'
    end
  end
end

feature 'Going again' do
  scenario 'It lets the user start again' do
    enter_birthdays_and_result
    click_button 'Start again!'
    expect(page).to have_content 'Hello there!'
  end
end
