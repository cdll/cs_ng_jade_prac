todoMod= angular.module 'todoMod'
todoMod.controller 'todoCtrl', ['$scope', ($scope, todoServ)->
#    console.info todoServ
    $scope= todoServ
]
todoMod.service 'todoServ', (service={})->
    _input= ''
    _todoList= []
    _pushList= (e)->
        if e.which==13 and !!this.input.trim()
            this.todoList.push {content: this.input, checked: 0}
            this.input= ''
    init= ->
        this.input= _input
        this.todoList= _todoList
        this.pushList= _pushList
        return service
    return service



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