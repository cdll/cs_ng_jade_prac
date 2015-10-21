(function() {
  var todoMod;

  todoMod = angular.module('todoMod');

  todoMod.controller('todoCtrl', [
    '$scope', function($scope, todoServ) {
      return $scope = todoServ;
    }
  ]);

  todoMod.service('todoServ', function(service) {
    var _input, _pushList, _todoList, init;
    if (service == null) {
      service = {};
    }
    _input = '';
    _todoList = [];
    _pushList = function(e) {
      if (e.which === 13 && !!this.input.trim()) {
        this.todoList.push({
          content: this.input,
          checked: 0
        });
        return this.input = '';
      }
    };
    init = function() {
      this.input = _input;
      this.todoList = _todoList;
      this.pushList = _pushList;
      return service;
    };
    return service;
  });

}).call(this);
