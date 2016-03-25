﻿'use strict';
angular.module('megamine').directive('ntListToolbar', ntListToolbar)
ntListToolbar.$inject = ['$window', '$timeout', 'utility', 'constants'];

function ntListToolbar($window, $timeout, utility, constants) {
    return {
        restrict: 'E',
        transclude: {
            'chart': 'chart',
            'list': 'list',
        },
        scope: {
            vm: '=',
            header: '@',
            buttonType: '@',
            buttonText: '@',
            buttonIconCss: '@',
            buttonToolTip: '@',
            buttonClick: '&',
            claim: '@',
            toolbarCss: '@',
            gridClass: '@'
        },
        link: link,
        template: '<nt-toolbar header="{{header}}" class="{{toolbarCss}}">'
                        + '<span>'
                        + '<nt-button type="{{buttonType}}" icon-css="th" tool-tip="Grid View" button-text="Grid" ng-click="toggleView()" ng-hide="viewType === viewTypeEnum.grid"></nt-button>'
                        + '<nt-button type="{{buttonType}}" icon-css="tachometer" tool-tip="Dashboard View" button-text="Dashboard" ng-click="toggleView()" ng-hide="viewType !== viewTypeEnum.grid"></nt-button>'
                        + '<nt-button type="{{buttonType}}" icon-css="list" tool-tip="Toogle List" button-text="List" ng-click="toggleListView()" ng-hide="viewType === viewTypeEnum.grid"></nt-button>'
                        + '<nt-button type="{{buttonType}}" icon-css="refresh" tool-tip="Refresh Page" button-text="Refresh" ng-click="refresh()"></nt-button>'
                        + '<nt-button type="{{buttonType}}" icon-css="{{buttonIconCss}}" tool-tip="{{buttonToolTip}}" button-text="{{buttonText}}" ng-click="buttonClick({$event: $event})" claim="{{claim}}"></nt-button>'
                        + '</span>'
                    + '</nt-toolbar>'
                    + '<nt-grid class="grid-content" vm="vm" grid-class="{{gridClass}}" ng-hide="viewType !== viewTypeEnum.grid" ng-style="{\'height\' : height }"></nt-grid>'
                    + '<div class="chart-content full-width" layout="row" ng-hide="viewType === viewTypeEnum.grid" ng-style="{\'height\' : height }" >'
                        + '<div flex>'
                            + '<md-whiteframe class="md-whiteframe-24dp" flex>'
                                + '<md-content flex>'
                                    + '<div ng-transclude="chart"></div>'
                                + '</md-content>'
                            + '</md-whiteframe>'
                        + '</div>'
                        + '<div flex="20" layout="row" class="right-bar" ng-show="viewType === viewTypeEnum.list">'
                            + '<md-whiteframe class="md-whiteframe-24dp" flex>'
                                + '<md-content flex>'
                                    + '<div ng-transclude="list"></div>'
                                + '</md-content>'
                            + '</md-whiteframe>'
                        + '</div>'
                    + '</div>'

    };

    function link(scope, element, attrs, nullController, transclude) {
        scope.toolbarCss = scope.toolbarCss === undefined ? 'command-bar' : scope.toolbarCss;
        scope.gridClass = scope.gridClass === undefined ? 'main-grid' : scope.gridClass;
        scope.buttonIconCss = scope.buttonIconCss === undefined ? 'plus' : scope.buttonIconCss;

        scope.viewType = scope.viewType || constants.enum.viewType.grid;
        scope.viewTypeEnum = constants.enum.viewType;

        scope.toggleView = function () {
            scope.viewType = scope.viewType === constants.enum.viewType.dashboard || scope.viewType === constants.enum.viewType.list ? constants.enum.viewType.grid : constants.enum.viewType.list;
            refreshCharts(scope);
        }
        scope.toggleListView = function () {
            scope.viewType = scope.viewType === constants.enum.viewType.list ? constants.enum.viewType.dashboard : constants.enum.viewType.list;
            refreshCharts(scope);
        }

        scope.refresh = function () {
            refresh(scope);
        };

        setHeight(scope);

        angular.element($window).bind('resize', function () {
            setHeight(scope);
            refreshCharts(scope);
        });
        scope.$on('$destroy', function (e) {
            angular.element($window).unbind('resize');
        });

    }

    function setHeight(scope) {
        $timeout(function () {
            var contentClass = 'chart-content';
            if (scope.viewType === constants.enum.viewType.grid) {
                contentClass = 'grid-content';
            }
            scope.height = utility.getContentHeight('main-content', contentClass, 10);
        });
    }

    function refreshCharts(scope) {
        if (scope.viewType === constants.enum.viewType.dashboard || scope.viewType === constants.enum.viewType.list) {
            $timeout(function () {
                if (scope.vm.refreshCharts)
                    scope.vm.refreshCharts();
            })
        }
    }

    function refresh(scope) {
        if (scope.vm.refresh) {
            scope.vm.refresh().
                then(function () {
                    refreshCharts(scope);
                })
        }
    }
}
