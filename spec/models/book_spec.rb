require 'rails_helper'

RSpec.describe Book, type: :model do
  it 'saves given a valid Book' do
    book = Book.new(name: 'Buku', author: 'Nenek', price: 100, quantity: 10)
    expect(book.save).to be true
  end
  
  it 'does not save if price is negative' do
		  book = Book.new(name: 'Buku', author: 'Nenek', price: -100, quantity: 10)
		  expect(book.save).to be false
  end
end
