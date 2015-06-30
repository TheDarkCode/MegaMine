﻿'use strict'

angular.module('emine').factory('sparePartOrderDialog', sparePartOrderDialog);

sparePartOrderDialog.$inject = ['$mdDialog', 'vehicleService', 'utility'];

function sparePartOrderDialog($mdDialog, vehicleService, utility)
{

    var sparePartId;
    var sparePartOrderId;

    var dialog = {
        viewDialog: viewDialog,
        editMode: false,
    };

    return dialog;

    function viewDialog(orderModel, editMode, ev) {
        sparePartOrderId = orderModel.SparePartOrderId;
        sparePartId = orderModel.SparePartId;
        dialog.editMode = editMode;

        $mdDialog.show({
            controller: DialogController,
            controllerAs: "vm",
            templateUrl: utility.virtualDirectory + '/app/fleet/sparePartOrderDialog.html',
            targetEvent: ev,
            locals: { $mdDialog: $mdDialog, service: vehicleService, model: vehicleService.currentSparePartOrder, editMode: dialog.editMode },
            resolve: { resolvemodel: function () { return vehicleService.getCurrentSparePartOrder(sparePartOrderId) } }
        })
        .then(function () {
            orderModel.OrderedUTCdatetime = vehicleService.currentSparePartOrder.OrderedUTCdatetime;
            orderModel.OrderedUnits = vehicleService.currentSparePartOrder.OrderedUnits;
            orderModel.UnitCost = vehicleService.currentSparePartOrder.UnitCost;
        }, function () {
            //nothing to do when we cancel
        });
    }

    function DialogController($scope, $mdDialog, service, model, editMode) {


        var vm = {
            save: save,
            cancel: cancel,
            model: {},
            editMode: editMode,
        }

        init();

        return vm;

        function init() {
            angular.extend(vm.model, model);
            angular.extend($scope, vm);
        }
        
        function cancel() {
            event.preventDefault();
            $mdDialog.cancel();
        };
        function save(form) {
            if (form.$valid)
            {
                vm.model.sparePartId = sparePartId;
                service.saveSparePartOrder(vm.model).success(function ()
                {
                    //update the grid values
                    if (sparePartOrderId === 0)
                    {
                        //refresh the grid
                        vehicleService.getSparePart(sparePartId);
                    }
                    else
                    {
                        model.OrderedUTCdatetime = vm.model.OrderedUTCdatetime;
                        model.OrderedUnits = vm.model.OrderedUnits;
                        model.UnitCost = vm.model.UnitCost;

                        vehicleService.getSparePart(sparePartId);

                    }

                    $mdDialog.hide();

                });
            }
        };
    }

}
