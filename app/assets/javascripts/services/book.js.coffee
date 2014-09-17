app = angular.module 'bookService', ['ngResource']

app.factory 'Book', ['$resource',
  ($resource) ->
    $resource '/api/books.json', {},
      all:
        isArray: true
]
