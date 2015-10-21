todoMod= angular.module 'todoMod'
.controller 'todoCtrl', ['$scope', 'todoServ', ($scope, todoServ)->
#    console.info todoServ
    $scope= todoServ.init()
]
.service 'todoServ', (service={})->
    _input= ''
    _todoList= []
    _pushList= (e)->
        if e.which==13 and !!this.input.trim()
            service.todoList.push {content: service.input, checked: 0}
            service.input= ''
            service
    init= ->
        service.input= _input
        service.todoList= _todoList
        service.pushList= _pushList
        service
#    return service



#todoMod.controller 'todoCtrl', ['$scope', ($scope)->
#    $scope.input= ''
#    $scope.todoList= []
#    $scope.pushList= (e)->
#        if e.which== 13 and !!$scope.input.trim()
#                _temp=
#                    content: $scope.input
#                    checked: 0
#                $scope.todoList.push _temp
#                $scope.input= ''
#    $scope.todoRemove= (el)->
#        $scope.todoList.splice el, 1
#]