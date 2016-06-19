var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};
var MegaMine;
(function (MegaMine) {
    var Quarry;
    (function (Quarry) {
        "use strict";
        var Texture = (function () {
            function Texture(quarryService, utility, constants, dialogService, template) {
                this.quarryService = quarryService;
                this.utility = utility;
                this.constants = constants;
                this.dialogService = dialogService;
                this.template = template;
                var self = this;
                self.grid = {
                    options: {
                        columnDefs: [
                            { name: "textureName", field: "textureName", displayName: "Name", type: "string" }
                        ]
                    },
                    data: quarryService.textures
                };
                self.grid.view = self.viewDialog;
                self.grid.context = self;
                self.grid.options.columnDefs.push(template.getButtonDefaultColumnDefs("textureId", "Quarry:TextureEdit", "Quarry:TextureDelete", false));
            }
            Texture.prototype.addTexture = function (ev, context) {
                var self = context;
                var model = { textureId: 0 };
                self.viewDialog(model, self.constants.enum.dialogMode.save, ev, context);
            };
            Texture.prototype.viewDialog = function (model, dialogMode, ev, context) {
                var self = context;
                self.dialogService.show({
                    templateUrl: "texture_dialog",
                    targetEvent: ev,
                    data: { model: model, service: self.quarryService },
                    dialogMode: dialogMode
                })
                    .then(function (dialogModel) {
                    if (dialogMode === self.constants.enum.buttonType.delete) {
                        self.quarryService.deleteTexture(dialogModel.textureId).then(function () {
                            self.quarryService.getTextures();
                            self.dialogService.hide();
                        });
                    }
                    else {
                        self.quarryService.saveTexture(dialogModel).then(function () {
                            //update the grid values
                            if (dialogModel.textureId === 0) {
                                self.quarryService.getTextures();
                            }
                            else {
                                model.textureName = dialogModel.textureName;
                            }
                            self.dialogService.hide();
                        });
                    }
                });
            };
            Texture = __decorate([
                MegaMine.controller("megamine", "MegaMine.Quarry.Texture"),
                MegaMine.inject("quarryService", "utility", "constants", "dialogService", "template"), 
                __metadata('design:paramtypes', [Object, Object, Object, Object, Object])
            ], Texture);
            return Texture;
        }());
    })(Quarry = MegaMine.Quarry || (MegaMine.Quarry = {}));
})(MegaMine || (MegaMine = {}));
//# sourceMappingURL=texture.js.map