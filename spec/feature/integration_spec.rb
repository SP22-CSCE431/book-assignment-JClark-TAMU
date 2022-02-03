# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book with valid attributes', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'J.K. Rowling'
    fill_in 'Price', with: '10'
    fill_in 'Publisheddate', with: '09/03/1997'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
  end
end

RSpec.describe 'Creating a book with invalid attributes', type: :feature do
  scenario 'invalid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'J.K. Rowling'
    fill_in 'Price', with: '10'
    fill_in 'Publisheddate', with: 'Rowling'
    click_on 'Create Book'
    visit books_path
    expect(page).not_to have_content('harry potter')
  end
end

RSpec.describe 'Able to update a book', type: :feature do
  scenario 'valid inputs' do
    jkbook = Book.create!(title: 'harry potter',author: 'J.K. Rowling',price: '10',publishedDate: '09/03/1997')
    visit edit_book_path(id: jkbook.id)
    fill_in 'Title', with: 'harry potter 2'
    click_on 'Update Book'
    visit books_path
    expect(page).to have_content('harry potter 2')
  end
end

RSpec.describe 'Able to delete a book', type: :feature do
  scenario 'valid inputs' do
    jkbook = Book.create!(title: 'harry potter',author: 'J.K. Rowling',price: '10',publishedDate: '09/03/1997')
    visit confirm_book_path(id: jkbook.id)
    click_on 'Delete'
    visit books_path
    expect(page).not_to have_content('harry potter')
  end
end