#= require services/book

app = angular.module 'booksController', ['bookService']

app.controller 'BooksController', ['$scope', 'Book',
  ($scope, Book) ->
    $scope.books = Book.all {}
]

app.controller 'BookController', ['$scope', '$routeParams', '$location', 'Book',
  ($scope, $routeParams, $location, Book) ->
    $scope.book = Book.get id: $routeParams.id, (book) ->
      $scope.bookHumanPrice = book.price / 1000
      $scope.$watch 'bookHumanPrice', ->
        $scope.book.price = $scope.bookHumanPrice * 1000

    $scope.submitBook = ->
      $scope.book.$update {}, ->
        $location.path "/"
]
