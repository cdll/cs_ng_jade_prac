(function() {
  var todoMod;

  todoMod = angular.module('todoMod').controller('todoCtrl', [
    '$scope', 'todoServ', function($scope, todoServ) {
      return $scope = todoServ.init();
    }
  ]).service('todoServ', function(service) {
    var _input, _pushList, _todoList, init;
    if (service == null) {
      service = {};
    }
    _input = '';
    _todoList = [];
    _pushList = function(e) {
      if (e.which === 13 && !!this.input.trim()) {
        service.todoList.push({
          content: service.input,
          checked: 0
        });
        service.input = '';
        return service;
      }
    };
    return init = function() {
      service.input = _input;
      service.todoList = _todoList;
      service.pushList = _pushList;
      return service;
    };
  });

}).call(this);
