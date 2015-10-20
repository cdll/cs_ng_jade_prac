todoMod= angular.module('todoMod', [])
todoMod.controller('todoCtrl', ['$scope', ($scope)->
    $scope.input= ''
    $scope.todoList= []
    $scope.toList= (e)->
        if (e.which== 13) and (!!$scope.input.trim())
                _temp=
                    content: $scope.input
                    checked: 0
                $scope.todoList.push (_temp)
                $scope.input= ''
    $scope.todoRemove= (el)->
        $scope.todoList.splice(el, 1)
])