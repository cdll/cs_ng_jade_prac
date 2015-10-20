(function() {
  var todoMod;

  todoMod = angular.module('todoMod', []);

  todoMod.controller('TodoCtrl', [
    '$scope', function($scope) {
      $scope.input = 'halo';
      $scope.todoList = [1, 1, 1];
    }
  ]);

}).call(this);
