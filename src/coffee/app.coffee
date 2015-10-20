todoMod= angular.module('todoMod', [])
todoMod.controller('todoCtrl', ['$scope', ($scope)->
    $scope.input= ''
    $scope.todoList= []
    $scope.toList= (e)->
        if (e.which== 13)
            _temp=
                content: $scope.input
                checked: 0
            $scope.todoList.unshift (_temp) if !!$scope.input.trim()
            $scope.input= ''
    $scope.todoRemove= (el)->
        console.info(el)
        $scope.todoList.splice(el, 1)
    return
])