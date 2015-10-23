(function() {
  var todoMod;

  todoMod = angular.module('todoMod', []).service('todoServ', function() {
    var service;
    service = {
      input: '',
      todoList: JSON.parse(localStorage.todo_list) || [],
      pushList: function(e) {
        var _temp, _todo_list;
        if (e.which === 13 && this.input.trim()) {
          _temp = {
            content: this.input.trim(),
            checked: 0
          };
          this.todoList.push(_temp);
          try {
            _todo_list = JSON.parse(localStorage.todo_list);
          } catch (_error) {
            e = _error;
            _todo_list = [];
          } finally {
            _todo_list.push(_temp);
            localStorage.todo_list = JSON.stringify(_todo_list);
          }
          return this.input = '';
        }
      },
      todoRemove: function(el) {
        var _todo_list;
        _todo_list = JSON.parse(localStorage.todo_list);
        _todo_list.splice(el, 1);
        localStorage.todo_list = JSON.stringify(_todo_list);
        return this.todoList.splice(el, 1);
      }
    };
    service.setInput = function(data) {
      service.input = data;
      return service;
    };
    service.getInput = function() {
      return service.input;
    };
    service.setTodoList = function(arr) {
      service.todoList = arr || JSON.parse(localStorage.todo_list) || [];
      return service;
    };
    service.getTodoList = function() {
      return service.todoList;
    };
    return service;
  }).controller('todoCtrl', function($scope, todoServ) {
    $scope.input = todoServ.getInput();
    $scope.todoList = todoServ.getTodoList();
    $scope.pushList = todoServ.pushList;
    return $scope.todoRemove = todoServ.todoRemove;
  });

}).call(this);
