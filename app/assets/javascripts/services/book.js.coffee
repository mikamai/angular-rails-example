app = angular.module 'bookService', ['ngResource']

app.factory 'Book', ['$resource',
  ($resource) ->
    $resource '/api/books/:id.json', {id: '@id'},
      all:
        isArray: true
      update:
        method: 'PUT'
        transformRequest: (object) -> # incapsulate the object inside the book param
          angular.toJson book: object
]
