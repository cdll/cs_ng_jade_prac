todoMod= angular.module 'todoMod', []
#service
.service 'todoServ', ->
  service= 
    input: ''
    todoList: JSON.parse(localStorage.todo_list)|| []
    pushList: (e)->
      if e.which==13 and this.input.trim()
        _temp= {content: this.input.trim(), checked: 0}
        this.todoList.push _temp
        try
          _todo_list= JSON.parse localStorage.todo_list
        catch e
          _todo_list= []
        finally
          _todo_list.push _temp
          localStorage.todo_list= JSON.stringify _todo_list
        this.input= ''
        
    todoRemove: (el)->
      _todo_list= JSON.parse localStorage.todo_list
      _todo_list.splice el, 1
      localStorage.todo_list= JSON.stringify _todo_list
      this.todoList.splice el, 1
      
#    public api
  service.setInput= (data)->
    service.input= data
    service
  service.getInput= ->
    service.input
  service.setTodoList= (arr)->
    service.todoList= arr|| JSON.parse(localStorage.todo_list)|| []
    service
  service.getTodoList= ->
    service.todoList
  service
#controller
.controller 'todoCtrl', ($scope, todoServ)->
  $scope.input= todoServ
#    .setInput()
    .getInput()
  $scope.todoList= todoServ
#    .setTodoList()
    .getTodoList()
  $scope.pushList= todoServ
    .pushList
  $scope.todoRemove= todoServ
    .todoRemove
