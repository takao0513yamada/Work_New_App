class BooksController < ApplicationController
  before_action:set_book,only: [:show, :update, :destory]

  def index
    @books = Book.all
  end

  def show
  end

  def create
    Book.create!(book_params)
  end

  def update
    @book.update!(book_params)
  end

  def destroy
    @book.destroy!
  end

  private
    def book_params
      params.require(:book).permit(:title, :price, :summary)
    end

  def set_book
    @book = Book.find(params[:id])
  end
end
