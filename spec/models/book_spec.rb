require 'rails_helper'

RSpec.describe Book, type: :model do
  it "passes with title" do
    book = Book.new(title: "Test Book")
    expect(book).to be_valid
  end

  it "fails with no title" do
    book = Book.new(title: "")
    expect(book).not_to be_valid
  end

    it "passes with an author" do
    book = Book.new(title: "Test Book", author: "Test Author")
    expect(book).to be_valid
  end

  it "passes with a price" do
    book = Book.new(title: "Test Book", price: 9.99)
    expect(book).to be_valid
  end

  it "passes with a date" do
    book = Book.new(title: "Test Book", published_date: Date.today)
    expect(book).to be_valid
  end
end

