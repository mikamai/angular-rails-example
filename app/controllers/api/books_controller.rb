class API::BooksController < API::BaseController
  def index
    @books = Book.all
    respond_with @books
  end
end
