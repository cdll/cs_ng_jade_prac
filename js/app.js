(function() {
  var todoMod;

  todoMod = angular.module('todoMod');

  todoMod.controller('todoCtrl', [
    '$scope', function($scope, todoServ) {
      console.info(todoServ);
      return $scope = todoServ;
    }
  ]);

  todoMod.service('todoServ', function() {
    var _input, _pushList, _todoList, init, service;
    service = {};
    _input = '';
    _todoList = [];
    _pushList = function(e) {
      var _temp;
      if (e.which === 13 && !!this.input.trim()) {
        _temp = {
          content: this.input,
          checked: 0
        };
        this.todoList.push(_temp);
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
