import 'package:egczacademy/views/shared/widget/dialog/confirmation_dialog.dart';
import 'package:egczacademy/views/shared/widget/dialog/reservation_succes_dialog.dart';
import 'package:egczacademy/views/shared/widget/dialog/reserve_fail.dart';
import 'package:egczacademy/views/shared/widget/dialog/upload_dialog.dart';
import 'package:egczacademy/views/shared/widget/dialog/change_pass_dialog.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../../app/app.locator.dart';
import 'ammunition_dialog.dart';
import 'arme_dialog.dart';
import 'equipment_dialog.dart';
import 'reserve_dialog.dart';

enum DialogType {
  upload,
  arm,
  ammunition,
  equipments,
  reserve,
  reservefail,
  changePass,
  confirmation,
  reservesuccess
}

void setupDialogUi() {
  final dialogService = locator<DialogService>();
  final builders = {
    DialogType.upload: (context, sheetRequest, completer) =>
        UploadDialog(request: sheetRequest, completer: completer),
    DialogType.equipments: (context, sheetRequest, completer) =>
        EquipmentDetails(request: sheetRequest, completer: completer),
    DialogType.ammunition: (context, sheetRequest, completer) =>
        AmmunitionDetails(request: sheetRequest, completer: completer),
    DialogType.arm: (context, sheetRequest, completer) =>
        ArmDetails(request: sheetRequest, completer: completer),
    DialogType.reserve: (context, sheetRequest, completer) =>
        ReserveDialog(request: sheetRequest, completer: completer),
    DialogType.changePass: (context, sheetRequest, completer) =>
        ChangePassDialog(request: sheetRequest, completer: completer),
    DialogType.reservefail: (context, sheetRequest, completer) =>
        ReserveFailDialog(request: sheetRequest, completer: completer),
    DialogType.reservesuccess: (context, sheetRequest, completer) =>
        SuccesReservation(request: sheetRequest, completer: completer),
    DialogType.confirmation: (context, sheetRequest, completer) =>
        ConfirmationDialog(request: sheetRequest, completer: completer),
  };

  dialogService.registerCustomDialogBuilders(builders);
}
