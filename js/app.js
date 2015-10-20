(function() {
  var todoMod;

  todoMod = angular.module('todoMod', []);

  todoMod.controller('todoCtrl', [
    '$scope', function($scope) {
      $scope.input = '';
      $scope.todoList = [];
      $scope.toList = function(e) {
        var _temp;
        if (e.which === 13) {
          _temp = {
            content: $scope.input,
            checked: 0
          };
          if (!!$scope.input.trim()) {
            $scope.todoList.unshift(_temp);
          }
          return $scope.input = '';
        }
      };
      $scope.todoRemove = function(el) {
        console.info(el);
        return $scope.todoList.splice(el, 1);
      };
    }
  ]);

}).call(this);
