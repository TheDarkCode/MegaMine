﻿'use strict';
angular.module('megamine').controller('dressing', dressing)
dressing.$inject = ['$scope', 'uiGridConstants', 'uiGridValidateService', 'moment', 'plantService', 'gridUtility', 'dialogUtility', 'utility', 'constants', 'message'];

function dressing($scope, uiGridConstants, uiGridValidateService, moment, plantService, gridUtility, dialogUtility, utility, constants, message) {
    var blockGridOptions = {
        columnDefs: [
                    { name: 'blockNumber', field: 'blockNumber', type: 'string', displayName: 'Block Number', validators: { required: true }, cellTemplate: 'ui-grid/cellTitleValidator' },
                    { name: 'lengthBefore', field: 'lengthBefore', type: 'number', displayName: 'Length(Before)', validators: { required: true, number: true }, cellTemplate: 'ui-grid/cellTitleValidator' },
                    { name: 'widthBefore', field: 'widthBefore', type: 'number', displayName: 'Width(Before)' },
                    { name: 'heightBefore', field: 'heightBefore', type: 'number', displayName: 'Height(Before)' },
                    { name: 'weightBefore', field: 'weightBefore', type: 'number', displayName: 'Weight(Before)' },
                    { name: 'length', field: 'length', type: 'number', displayName: 'Length' },
                    { name: 'width', field: 'width', type: 'number', displayName: 'Width' },
                    { name: 'height', field: 'height', type: 'number', displayName: 'Height' },
                    { name: 'weight', field: 'weight', type: 'number', displayName: 'Weight' },
        ]
    };

    var stoppageGridOptions = {
        columnDefs: [
                    { name: 'startTime', field: 'startTime', type: 'time', displayName: 'Start Time', validators: { required: true, time: true, timeRange: true }, cellTemplate: 'ui-grid/cellTitleValidator' },
                    { name: 'endTime', field: 'endTime', type: 'time', displayName: 'End Time', validators: { required: true, time: true, timeRange: true }, cellTemplate: 'ui-grid/cellTitleValidator' },
                    { name: 'reason', field: 'reason', type: 'string', displayName: 'Reason', validators: { required: true }, cellTemplate: 'ui-grid/cellTitleValidator' },
        ]
    };

    var operatorGridOptions = {
        columnDefs: [
                    { name: 'operatorName', field: 'operatorName', type: 'string', displayName: 'Operator', validators: { required: true }, cellTemplate: 'ui-grid/cellTitleValidator', editableCellTemplate: 'ui-grid/dropdownEditor', editDropdownOptionsArray: plantService.dressingModel.operators, editDropdownValueLabel: 'item', editDropdownIdLabel: 'key', editModelField: 'operatorId' },
                    { name: 'startTime', field: 'startTime', type: 'time', displayName: 'Start Time', validators: { required: true, time: true, timeRange: true }, cellTemplate: 'ui-grid/cellTitleValidator' },
                    { name: 'endTime', field: 'endTime', type: 'time', displayName: 'End Time', validators: { required: true, time: true, timeRange: true }, cellTemplate: 'ui-grid/cellTitleValidator' },
                ]
        };


    var vm = {
        dressingModel: {},
        blockGridOptions: blockGridOptions,
        stoppageGridOptions: stoppageGridOptions,
        operatorGridOptions: operatorGridOptions,
        saveDressing: saveDressing,
        addBlocks: addBlocks,
        removeBlocks: removeBlocks,
        addStoppage: addStoppage,
        removeStoppage: removeStoppage,
        addOperator: addOperator,
        removeOperator: removeOperator,
        blankBlockRow: undefined,
        blankStoppageRow: undefined,
        blankOperatorRow: undefined,
        gridsValid: true,
        validationErrors: { message: undefined, errors: []}
    }
    init();

    return vm;

    function init() {
        setValidators();

        vm.dressingModel = plantService.dressingModel;
        removeBlockModelZeros();

        vm.blankBlockRow = angular.copy(vm.dressingModel.model.blocks[0]);
        vm.blankStoppageRow = { startTime: null, endTime: null, reason: null };
        vm.blankOperatorRow = { operatorId: null, opeartorName: null, startTime: null, endTime: null };

        //grid options
        setGridOptions(vm.blockGridOptions, vm.dressingModel.model.blocks);
        setGridOptions(vm.stoppageGridOptions, vm.dressingModel.machineStoppages);
        setGridOptions(vm.operatorGridOptions, vm.dressingModel.machineOperators);

        //operator Grid showing operator name
    }

    function setValidators() {
        uiGridValidateService.setValidator('number',
          function (argument) {
              return function (oldValue, newValue, rowEntity, colDef) {
                  if (argument) {
                      return isFinite(newValue);
                  }
                  return true;
              };
          },
          function (argument) {
              return 'Invalid number';
          }
        );
        uiGridValidateService.setValidator('time',
          function (argument) {
              return function (oldValue, newValue, rowEntity, colDef) {
                  if (argument && newValue) {
                      return moment(newValue, 'h:mm A', true).isValid();
                  }
                  return true;
              };
          },
          function (argument) {
              return 'Invalid time';
          }
        );
        uiGridValidateService.setValidator('timeRange',
          function (argument) {
              return function (oldValue, newValue, rowEntity, colDef) {
                  if (argument && rowEntity.startTime && rowEntity.endTime) {
                      var startTime = moment(rowEntity.startTime, 'h:mm A', true);
                      var endTime = moment(rowEntity.endTime, 'h:mm A', true);
                      if (startTime.isValid() && endTime.isValid())
                          return startTime.isBefore(endTime);
                      else
                          return true;
                  }
                  return true;
              };
          },
          function (argument) {
              return 'Start time should be before end time';
          }
        );
    }

    function removeBlockModelZeros(){
        angular.forEach(vm.dressingModel.model.blocks, function (item) {
            item.lengthBefore = null;
            item.widthBefore = null;
            item.heightBefore = null;
            item.length = null;
            item.width = null;
            item.height = null;
        })
    }

    function setGridOptions(gridOptions, data) {
        gridOptions.enableColumnResizing = true,
        gridOptions.data = data;
        gridOptions.enableCellEditOnFocus = true;
        gridOptions.enableHorizontalScrollbar = uiGridConstants.scrollbars.NEVER,

        gridOptions.onRegisterApi = function(gridApi){
            gridOptions.gridApi = gridApi;
            gridApi.validate.on.validationFailed($scope, function (rowEntity, colDef, newValue, oldValue) {
                vm.gridsValid = false;
            });

            gridApi.edit.on.afterCellEdit($scope, function (rowEntity, colDef, newValue, oldValue) {
                if (colDef.field === 'operatorName') {
                    rowEntity.operatorName = utility.getItem(vm.dressingModel.operators, rowEntity.operatorId, "key", "item");;
                }
            });
        };

    }

    function saveDressing(form, ev) {
        vm.gridsValid = true;
        validateGrid(vm.blockGridOptions);
        validateGrid(vm.stoppageGridOptions);
        validateGrid(vm.operatorGridOptions);

        vm.validationErrors.message = undefined;
        var errors = vm.validationErrors.errors;
        errors.splice(0, errors.length);

        dialogUtility.confirm('Confirm Save', 'Please confirm to save the Dressing info', ev )
            .then(function () {
                //validating form
                if (vm.dressingModel.model.blocks.length === 0) {
                    errors.push({ description: 'There should be at least one block' });
                    vm.gridsValid = false;
                }
                if (vm.dressingModel.machineStoppages.length === 0) {
                    errors.push({ description: 'There should be at least one stoppage' });
                    vm.gridsValid = false;
                }
                if (vm.dressingModel.machineOperators.length === 0) {
                    errors.push({ description: 'There should be at least one operator' });
                    vm.gridsValid = false;
                }

                if (!form.$valid || !vm.gridsValid) {
                    dialogUtility.alert('Errors', 'Please fix the errors before saving', ev);
                    if (errors.length > 0) {
                        vm.validationErrors.message = 'Please fix the below errors before saving';
                    }
                }
                else {
                    //saving the model
                    plantService.dressingSave(vm.dressingModel).then(function(data){

                    }).catch(function (data) {
                        vm.validationErrors.message = data.message;
                        utility.extend(vm.validationErrors.errors, data.model.data);
                    })
                }
        });

    }

    function validateGrid(gridOptions) {
        angular.forEach(gridOptions.data, function (rowEntity) {
            angular.forEach(gridOptions.columnDefs, function (colDef) {
                gridOptions.gridApi.grid.validate.runValidators(rowEntity, colDef, rowEntity[colDef.field], undefined, gridOptions.gridApi.grid)
            })
        })
    }

    function addBlocks() {
        add(vm.dressingModel.model.blocks, vm.blankBlockRow);
    }

    function removeBlocks() {
        remove(vm.dressingModel.model.blocks, vm.blockGridOptions.gridApi);
    }

    function addStoppage() {
        add(vm.dressingModel.machineStoppages, vm.blankStoppageRow);
    }

    function removeStoppage() {
        remove(vm.dressingModel.machineStoppages, vm.stoppageGridOptions.gridApi);
    }

    function addOperator() {
        add(vm.dressingModel.machineOperators, vm.blankOperatorRow);
    }

    function removeOperator() {
        remove(vm.dressingModel.machineOperators, vm.operatorGridOptions.gridApi);
    }

    function add(data, blankRow) {
        data.push(angular.copy(blankRow));
    }

    function remove(data, gridApi){
        var selectedRows = gridApi.selection.getSelectedRows();
        for (var selectedCounter = 0; selectedCounter < selectedRows.length; selectedCounter++) {
            for (var dataCounter = 0; dataCounter < data.length; dataCounter ++) {
                if (selectedRows[selectedCounter].$$hashKey === data[dataCounter].$$hashKey) {
                    data.splice(dataCounter, 1);
                    break;
                }
            }
        }
    }
}