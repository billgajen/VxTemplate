vxChartApp.controller('ChartController', ['$scope', function($scope) {
	'use strict';
	
	$scope.RevenueProducts = [];
	$scope.salesData = [];
	$scope.countryData = [];
	
	$scope.getAllRevenueProduct = function(pageName, revenueValue) {
		$scope.RevenueProducts.push({
			'label': pageName,
			'value':  revenueValue
		});
	}

	$scope.getAllSalesValues = function(pageName, salesAmount) {
		$scope.salesData.push({
			'label': pageName,
			'value':  salesAmount
		});
	}
	
	$scope.getAllCountryData = function(countryId, gdpValue) {
		$scope.countryData.push({
			'id': countryId,
			'value':  gdpValue,
			'color': 'a6d241'
		});
	}
	
	RenderRevenuePieChart($scope.RevenueProducts);
	RenderSalesChart($scope.salesData);
	RenderMapChart($scope.countryData);
}]);
