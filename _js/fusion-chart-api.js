function RenderRevenuePieChart(revenueData){
	FusionCharts.ready(function(){
		// Call chart
		var RevenuePieChart = new FusionCharts({
            type: 'doughnut2d',
            renderAt: 'pie-chart-container',
			width: '100%',
			height: '450',
            dataFormat: 'json',
            dataSource: {
                "chart": {
                    "caption": "Split of Revenue by Product Categories",
                    "subCaption": "Last year",
                    "numberPrefix": "£",
                    "showBorder": "0",
                    "use3DLighting": "0",
                    "enableSmartLabels": "0",
                    "startingAngle": "310",
                    "showLabels": "0",
                    "showPercentValues": "1",
                    "showLegend": "1",
                    "defaultCenterLabel": "Total revenue: £64.08K",
                    "centerLabel": "Revenue from $label: $value",
                    "centerLabelBold": "1",
                    "showTooltip": "0",
                    "decimals": "0",
                    "useDataPlotColorForLabels": "1",
                    "theme": "fint"
                },
                "data": revenueData
            }
		});
		RevenuePieChart.render();
	});
}
function RenderSalesChart(salesData){
	FusionCharts.ready(function(){
		// Call chart
		var SalesChart = new FusionCharts({
            type: 'area2d',
            renderAt: 'area-chart-container',
            width: '100%',
            height: '350',
            dataFormat: 'json',
            dataSource: {
                "chart": {
                    "caption": "Sales of Novel",
                    "subCaption": "Last week",
                    "xAxisName": "Day",
                    "yAxisName": "Sales (In British Pounds)",
                    "numberPrefix": "£",
                    "paletteColors": "#0075c2",
                    "bgColor": "#ffffff",
                    "showBorder": "0",
                    "showCanvasBorder": "0",
                    "plotBorderAlpha": "10",
                    "usePlotGradientColor": "0",
                    "plotFillAlpha": "50",
                    "showXAxisLine": "1",
                    "axisLineAlpha": "25",
                    "divLineAlpha": "10",
                    "showValues": "1",
                    "showAlternateHGridColor": "0",
                    "captionFontSize": "14",
                    "subcaptionFontSize": "14",
                    "subcaptionFontBold": "0",
                    "toolTipColor": "#ffffff",
                    "toolTipBorderThickness": "0",
                    "toolTipBgColor": "#000000",
                    "toolTipBgAlpha": "80",
                    "toolTipBorderRadius": "2",
                    "toolTipPadding": "5"
                },
                "data": salesData
            }
		});
		SalesChart.render();
	});
}
function RenderMapChart(countryData){
	FusionCharts.ready(function(){
		// Call chart
		var MapChart = new FusionCharts({
			type: 'europe',
			renderAt: 'map-chart-container',
			width: '100%',
			height: '450',
			dataFormat: 'json',
			dataSource: {
				"chart": {
					"bgColor": "#ffffff",
					"showCanvasBorder": "0",
					"valueFontColor": "#575757",
					"valueFontSize": "12",
					"alignCaptionWithCanvas": "0",
					"showAlternateVGridColor": "0",
					"outCnvBaseFontSize":"12",
					"captionFontSize": "14",
					"subcaptionFontSize": "14",
					"showAxisLines": "0",
					"divLineAlpha": "0",
					"subcaptionFontBold": "0",
					"showYAxisValues":"0",
					"toolTipColor": "#ffffff",
					"toolTipBorderThickness": "0",
					"toolTipBgColor": "#000000",
					"toolTipBgAlpha": "80",
					"toolTipBorderRadius": "2",
					"toolTipPadding": "5",
					"showShadow": "0",
					"showBorder": "1",
					"borderColor": "ffffff",
					"borderThickness": "1",
					"fillColor": "#cfcfcf",
					"showLabels": "0",
					"chartRightMargin": "50",
					"chartTopMargin": "0",
					"chartLeftMargin": "0",
					"chartRightMargin": "0",
					"markerRadius": "10",
					"chartBottomMargin": "0",
					"showMarkerLabels": "1",
					"hoverColor": "211D62",
					"entityToolText": "$lName: $dataValue%"
				},
				"data": countryData
			}
		});
		MapChart.render();
	});
}
