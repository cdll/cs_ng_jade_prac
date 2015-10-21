(function() {
  var todoMod;

  todoMod = angular.module('todoMod', []).service('todoServ', function() {
    var service;
    service = {};
    service.pushList = function(e) {
      if (e.which === 13 && !!service.input.trim()) {
        service.todoList.push({
          content: service.input.trim(),
          checked: 0
        });
        service.input = '';
        return service;
      }
    };
    service.todoRemove = function(el) {
      return service.todoList.splice(el, 1);
    };
    service.setInput = function(data) {
      service.input = data;
      return service;
    };
    service.getInput = function() {
      return service.input;
    };
    service.setTodoList = function(arr) {
      service.todoList = arr || [];
      return service;
    };
    service.getTodoList = function() {
      return service.todoList;
    };
    return service;
  }).controller('todoCtrl', function($scope, todoServ) {
    $scope = todoServ;
    $scope.input = todoServ.setInput(0).getInput();
    $scope.todoList = todoServ.setTodoList([
      {
        content: 'bello',
        checked: 0
      }
    ]).getTodoList();
    $scope.pushList = todoServ.pushList;
    return $scope.todoRemove = todoServ.todoRemove;
  });

}).call(this);
