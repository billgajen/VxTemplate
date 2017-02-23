vxChartApp.controller('tabController', ['$scope', '$location', function($scope, $location) {
	'use strict';

	$scope.tab = 'tab-one';
	$scope.tabbing = function(type) {
		$scope.tab = type;
	};
}]);
