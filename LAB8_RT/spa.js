var app = angular.module('myApp', [], ['ui.bootstrap']);
var app = angular.module('myApp', ['ngRoute']);
app.config(function($routeProvider) {
    $routeProvider

        .when('/', {
        templateUrl: 'aboutus.html',
        controller: 'FirstController'
    })

    .when('/manipulate', {
        templateUrl: 'manipulate.html',
        controller: 'SecondController'
    })

    .when('/mechanicdata', {
        templateUrl: 'mechanicdata.html',
        controller: 'ThirdController'
    })

    .otherwise({
        redirectTo: '/'
    });
});


app.controller('FirstController', function($scope) {
    $scope.message = 'We create new ideas and designs';
    $scope.message2 = 'Let us discuss how we code';
});


app.controller('SecondController', function($scope, $http) {
    $http.get('sample.json')
        .success(function(response) {
            $scope.names = response.data;
        });
});

app.controller('ThirdController', function($scope, $http) {
    $http.get('sample.json')
        .success(function(response) {
            $scope.names = response.data;
            $scope.rowlimit = 10;
        });
});