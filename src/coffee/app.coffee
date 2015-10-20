todoMod= angular.module 'todoMod', []
todoMod.controller 'TodoCtrl', ['$scope', ($scope)->
    $scope.input= 'halo'
    $scope.todoList= [1,1,1]
    return
]