(function(){
  "use strict";
  angular.module("app").controller("employeeCtrl", function($scope, $http){
    $scope.setup = function() {
      $http.get("/api/v1/employees.json").then(function(response){
        $scope.employees = response.data;
      });

    };

    $scope.addEmployee = function(newFirstName, newLastName) {

        var newEmployee = {
          first_name: newFirstName,
          last_name: newLastName
        };

    };


    // $http.post("/api/v1/employees.json", newEmployee).then(function(response){
        
    //     console.log(response.data);
    //     $scope.employees.push(newEmployee);
    //     $scope.formFirstName = null;
    //     $scope.formLastName = null;
      
    //   });


    $scope.toggleOrder = function(attribute){
        if (attribute != $scope.orderAttribute) {
          $scope.descending = false;
        } else {
          $scope.descending = !$scope.descending; 
        };

        $scope.orderAttribute = attribute;

    };



  });
}());
