class API::BooksController < API::BaseController
  def index
    @books = Book.all
    respond_with :api, @books
  end

  def show
    @book = Book.find params[:id]
    respond_with :api, @book
  end

  def update
    @book = Book.find params[:id]
    @book.update_attributes book_params
    respond_with :api, @book
  end

  private

  def book_params
    params.require(:book).permit(:isbn, :author, :title, :price)
  end
end
