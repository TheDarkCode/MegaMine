﻿'use strict';
angular.module('megamine').controller('materialColour', materialColour)
materialColour.$inject = ['quarryService', 'constants', 'dialogService', 'template'];

function materialColour(quarryService, constants, dialogService, template) {

    var gridOptions = {
        columnDefs: [
                    { name: 'colourName', field: 'colourName', displayName: 'Colour', type: 'string' },
                    { name: 'colourDescription', field: 'colourDescription', type: 'string', displayName: 'Description' },
                    template.getButtonDefaultColumnDefs('materialColourId', 'Quarry:MaterialColourEdit', 'Quarry:MaterialColourDelete')
                ]
    };


    var vm = {
        dashboard: {
            header: 'Colours',
            options: {
                gridOptions: gridOptions,
                listOptions: {
                    fields: ['colourName', 'colourDescription'],
                    primaryField: 'materialColourId'
                },
                addOptions: {
                    text: 'New',
                    toolTip: 'New Colour',
                    claim: 'Quarry:MaterialColourAdd',
                    add: addMaterialColour,
                    view: viewDialog
                }
            },
            data: {
                widgets: quarryService.colours.dashboard.widgets,
                pageWidgets: quarryService.colours.dashboard.pageWidgets,
                list: quarryService.colours.list
            }
        }
    };

    init();

    return vm;

    function init() {

    }

    function addMaterialColour(ev) {
        var model = { materialColourId: 0 }
        viewDialog(model, constants.enum.dialogMode.save, ev);
    }

    function viewDialog(model, dialogMode, ev) {
        dialogService.show({
            templateUrl: 'material_colour_dialog',
            targetEvent: ev,
            data: { model: model },
            dialogMode: dialogMode
        })
        .then(function (dialogModel) {
            if (dialogMode === constants.enum.buttonType.delete) {
                quarryService.deleteMaterialColour(dialogModel.materialColourId).then(function () {
                    quarryService.getMaterialColours();
                    dialogService.hide();
                });
            }
            else {
                quarryService.saveMaterialColour(dialogModel).then(function () {
                    //update the grid values
                    if (dialogModel.materialColourId === 0) {
                        quarryService.getMaterialColours();
                    }
                    else {
                        model.colourName = dialogModel.colourName
                        model.colourDescription = dialogModel.colourDescription
                    }

                    dialogService.hide();
                });
            }
        });
    }
}

