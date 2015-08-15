﻿'use strict';
angular.module('emine').controller('material', material)
material.$inject = ['$scope', '$window', '$mdDialog', 'quarryService', 'uiGridConstants', 'utility', 'constants'];

function material($scope, $window, $mdDialog, quarryService, uiGridConstants, utility, constants) {

    var gridOptions = {
        enableColumnResizing: true,
        enableHorizontalScrollbar: uiGridConstants.scrollbars.NEVER,
        columnDefs: [
                    { name: 'quarry', field: 'Quarry', type: 'string', displayName: 'Quarry', enableHiding: false },
                    { name: 'productType', field: 'ProductType', displayName: 'Product Type', type: 'string', enableHiding: false },
                    { name: 'colour', field: 'MaterialColour', type: 'string', displayName: 'Colour', enableHiding: false },
                    { name: 'dimensions', field: 'Dimensions', type: 'string', displayName: 'Dimensions', enableHiding: false },
                    { name: 'materialDate', field: 'MaterialDate', displayName: 'Date', type: 'date', cellFilter: 'date:"' + constants.dateFormat + '"' },
                    { name: 'materialId', field: 'MaterialId', displayName: '', enableColumnMenu: false, type: 'string', cellTemplate: "<md-button class=\"md-raised\" ng-click=\"grid.appScope.vm.editRowMaterial(row.entity, $event)\"><md-icon class=\"icon-button\" md-svg-icon=\"content/images/icons/edit.svg\"></md-icon></md-button><md-button class=\"md-raised\" ng-click=\"grid.appScope.vm.deleteRowMaterial(row.entity, $event)\"><md-icon class=\"icon-button\" md-svg-icon=\"content/images/icons/delete.svg\"></md-icon></md-button>", cellClass: "text-center", enableHiding: false },
        ]
    };


    var vm = {
        list: [],
        model: {},
        previousModel: {},
        viewModel: {},
        gridOptions: gridOptions,
        gridHeight: '0px',
        viewDialog: {},
        addMaterial: addMaterial,
        saveMaterial: saveMaterial,
        editRowMaterial: editRowMaterial,
        deleteRowMaterial: deleteRowMaterial,
        cancelMaterial: cancelMaterial,
        updateMaterial: updateMaterial,
        editMode: false
    };

    init();

    return vm;

    function init() {
        vm.viewModel = quarryService.materialViewModel;
        vm.model = vm.viewModel.Model;
        vm.model.MaterialDate = new Date();
        vm.gridOptions.data = vm.list;
        resizeGrid();

        angular.element($window).bind('resize', function () {
            resizeGrid();
        });
        $scope.$on('$destroy', function (e) {
            angular.element($window).unbind('resize');
        });
    }

    function resizeGrid() {
        vm.gridHeight = utility.getMainGridHeight('main-grid');
    }

    function updateDropDownText() {
        vm.model.ProductType = utility.getListItem(vm.viewModel.ProductType, vm.model.ProductTypeId);
        vm.model.MaterialColour = utility.getListItem(vm.viewModel.MaterialColour, vm.model.MaterialColourId);
        vm.model.Quarry = utility.getListItem(vm.viewModel.Quarry, vm.model.QuarryId);
    }

    function resetModel() {
        vm.model.Dimensions = "";
    }

    function addMaterial(form) {
        if (form.$valid) {
            updateDropDownText();
            vm.model.index = vm.list.length;
            vm.list.push(angular.copy(vm.model));
            resetModel();
        }
    }

    function saveMaterial(ev) {
        if (vm.list.length === 0) {
            $mdDialog.show(
              $mdDialog.alert()
                .parent(angular.element(document.body))
                .title('No Materials')
                .content('Please add materials to save')
                .ariaLabel('No Materials')
                .ok('Ok')
                .targetEvent(ev)
            );
        }
        else {
            var confirm = $mdDialog.confirm()
              .parent(angular.element(document.body))
              .title('Confirm Save')
              .content('Please confirm to save the material')
              .ariaLabel('Save Material')
              .ok('Yes')
              .cancel('No')
              .targetEvent(ev);
            $mdDialog.show(confirm).then(function () {
                quarryService.saveMaterial(vm.list)
                    .success(function (data) {
                            vm.list.splice(0, vm.list.length);
                            resetModel();
                        });
                    }, function () {
                        //noting
            });
        }
    }

    function editRowMaterial(row, ev) {
        vm.previousModel = angular.copy(vm.model);
        angular.extend(vm.model, row);
        vm.editMode = true;
    }

    function deleteRowMaterial(row, ev) {
        var message = "Are you sure you want to delete the material" + "{Quarry: " + row.Quarry + ", Product Type: " + row.ProductType + ", Colour: " + row.MaterialColour + ", Dimensions: " + row.Dimensions + "}";
        var confirm = $mdDialog.confirm()
          .parent(angular.element(document.body))
          .title('Delete Material')
          .content(message)
          .ariaLabel('Delete Material')
          .ok('Yes')
          .cancel('No')
          .targetEvent(ev);
        $mdDialog.show(confirm).then(function () {
            vm.list.splice(row.index, 1);
        }, function () {
            //noting
        });
    }

    function cancelMaterial(form) {
        angular.extend(vm.model, vm.previousModel);
        vm.editMode = false;
    }

    function updateMaterial(form) {
        if (form.$valid) {
            updateDropDownText();
            angular.extend(vm.list[vm.model.index], vm.model);
            resetModel();
            vm.editMode = false;
        }
    }
}
