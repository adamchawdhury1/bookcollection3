require 'rails_helper'

RSpec.describe "Adding a book", type: :feature do
  it "creates book with title" do
    visit new_book_path

    fill_in "Title", with: "Test Title 1"
    click_button "Create Book"

    expect(page).to have_content("Book was successfully created.") # check for flash notice
    expect(page).to have_content("Test Title 1")
  end

  it "fails with no title" do
    visit new_book_path

    fill_in "Title", with: ""
    click_button "Create Book"

    expect(page).to have_content("can't be blank") # check for validation error
  end
end 
