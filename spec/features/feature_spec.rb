feature 'Testing infrastructure' do
  scenario 'Can run app and check page content' do
    visit('/test')
    expect(page).to have_content 'Testing infrastructure working!'
  end
end

feature 'Home page' do
  scenario 'Display a greeting' do
    visit('/')
    expect(page).to have_content 'Hello there!'
  end
end