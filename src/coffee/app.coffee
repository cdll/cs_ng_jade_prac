todoMod= angular.module 'todoMod', []
.service 'todoServ', ->
    service= {}
    service.pushList= (e)->
        console.info(e)
        if e.which==13 and !!service.input.trim()
            service.todoList.push {content: service.input.trim(), checked: 0}
            service.input= ''
            service
    service.todoRemove= (el)->
        service.todoList.splice el, 1
#    public api
    service.setInput= (data)->
        service.input= data
        service
    service.getInput= ->
        service.input
    service.setTodoList= (arr)->
        service.todoList= arr|| []
        service
    service.getTodoList= ->
        service.todoList
    service
.controller 'todoCtrl', ($scope, todoServ)->
    $scope= todoServ
    $scope.input= todoServ.setInput 0
        .getInput()
    $scope.todoList= todoServ.setTodoList [{content: 'bello', checked: 0}]
        .getTodoList()
    $scope.pushList= todoServ.pushList
    $scope.todoRemove= todoServ.todoRemove
    console.table $scope
