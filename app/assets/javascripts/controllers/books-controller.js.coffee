app = angular.module 'booksController', []

app.controller 'BooksController', ['$scope',
  ($scope) ->
    $scope.books = [
      {
        isbn  : '0345413350'
        author: 'Phillip Pullman'
        title : 'The Golden Compass'
        price : 32000
      },
      {
        isbn  : '0048232335'
        author: 'John R.R. Tolkien'
        name  : 'Farmer Giles of Ham'
        price : 45000
      }
    ]
]
