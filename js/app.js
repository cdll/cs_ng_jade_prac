(function() {
  var todoMod;

  todoMod = angular.module('todoMod', []);

  todoMod.controller('todoCtrl', [
    '$scope', function($scope) {
      $scope.input = '';
      $scope.todoList = [];
      $scope.toList = function(e) {
        var _temp;
        if ((e.which === 13) && (!!$scope.input.trim())) {
          _temp = {
            content: $scope.input,
            checked: 0
          };
          $scope.todoList.push(_temp);
          return $scope.input = '';
        }
      };
      $scope.todoRemove = function(el) {
        return $scope.todoList.splice(el, 1);
      };
    }
  ]);

}).call(this);
