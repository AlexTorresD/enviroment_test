# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book with only date', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Published date', with: Date.new(2001,2,3)
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content(Date.new(2001,2,3))
    expect(page).to have_content('harry potter')
  end
end

RSpec.describe 'Creating a book with only title', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
  end
end

RSpec.describe 'Creating a book with only author', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'JK Rowling'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('JK Rowling')
    expect(page).to have_content('harry potter')
  end
end

RSpec.describe 'Creating a book with only price', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Price', with: 12.00
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content(12.00)
    expect(page).to have_content('harry potter')
  end
end
