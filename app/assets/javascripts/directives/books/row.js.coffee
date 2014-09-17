#= require templates/books/row

app = angular.module 'bookRow', ['templates']

app.directive 'bookRow', ->
  {
    restrict: 'A'
    scope:
      book: '='
      removeBook: '&removebook'
    templateUrl: 'books/row.html'
    controller: ($scope) ->
  }
