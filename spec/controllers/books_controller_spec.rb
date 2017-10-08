require 'rails_helper'

RSpec.describe BooksController, type: :controller do
    describe '#index' do
    	  it 'does it successfully' do
			  get :index
			  expect(response).to have_http_status :ok
		  end
    end

	describe '#show' do
			it 'does it successfully' do
					book = Book.create(name:'buku', author:'nenek', quantity:10, price: 100)
					get :show, params: {id: book.id}
					expect(response).to have_http_status :ok
			end
	end

	describe '#create' do
			it 'does it successfully, with a book created' do
					book_params = {name: 'Buku', author: 'Nenek', quantity: 10, price: 100}
					post :create, params: {book: book_params}
					expect(Book.where(book_params).length).to be 1
					expect(response).to redirect_to books_path
			end
	end
end
