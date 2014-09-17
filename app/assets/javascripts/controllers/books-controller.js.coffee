#= require services/book

app = angular.module 'booksController', ['bookService']

app.controller 'BooksController', ['$scope', 'Book'
  ($scope, Book) ->
    $scope.books = Book.all {}
]
