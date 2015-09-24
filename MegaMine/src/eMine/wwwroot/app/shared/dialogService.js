﻿'use strict'

angular.module('emine').factory('dialogService', dialogService);
dialogService.$inject = ['$q', '$mdDialog', 'utility'];

function dialogService($q, $mdDialog, utility) {
    var vm = {
        show: show,
        hide: hide,
        deferred: undefined,
        dialogModel: {}
    };

    init();

    return vm;

    function init() {

    }

    function show(options) {
        vm.deferred = $q.defer();

        $mdDialog.show({
            controller: dialogController,
            controllerAs: "vm",
            templateUrl: options.templateUrl,
            targetEvent: options.targetEvent,
            locals: { $mdDialog: $mdDialog, data: options.data, dialogMode: options.dialogMode },
            resolve: options.resolve
        });

        return vm.deferred.promise;
    }

    function hide() {
        $mdDialog.hide();
    }

    function dialogController($scope, $mdDialog, data, dialogMode) {


        var dialog = {
            save: save,
            cancel: cancel,
            deleteItem: deleteItem,
            dialogMode: dialogMode
        }

        init();

        return dialog;

        function init() {
            angular.extend(dialog, data);
            //cloning the model
            utility.deleteProperties(vm.dialogModel);
            if (data.model !== undefined) {
                dialog.model = angular.extend(vm.dialogModel, data.model);
            }
            angular.extend($scope, dialog);
        }

        function cancel(ev) {
            ev.preventDefault();
            $mdDialog.cancel();
        }
        function save(form) {
            if (form.$valid) {
                vm.deferred.resolve(dialog.model)
            }
        }
        function deleteItem(ev) {
            vm.deferred.resolve(dialog.model)
        }
    }


}