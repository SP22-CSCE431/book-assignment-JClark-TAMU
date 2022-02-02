# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
  end
end


RSpec.describe 'Creating a book with an author', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'J.K. Rowling'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
    expect(page).to have_content('J.K. Rowling')
  end
end

RSpec.describe 'Creating a book with an price', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Price', with: '9.99'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
    expect(page).to have_content('9.99')
  end
end

RSpec.describe 'Creating a book with an published-date', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Published-Date', with: '09/13/1997'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
    expect(page).to have_content('09/13/1997')
  end
end