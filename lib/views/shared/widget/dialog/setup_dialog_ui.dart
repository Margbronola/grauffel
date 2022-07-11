import 'package:egczacademy/views/shared/widget/dialog/change_pass-dialog.dart';
import 'package:egczacademy/views/shared/widget/dialog/reserve_dialog.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../../app/app.locator.dart';
import 'arme_dialog.dart';
import 'basic_dialog.dart';

enum DialogType { basic, arm, reserve, changePass }

void setupDialogUi() {
  final dialogService = locator<DialogService>();
  final builders = {
    DialogType.basic: (context, sheetRequest, completer) =>
        BasicDialog(request: sheetRequest, completer: completer),
    DialogType.arm: (context, sheetRequest, completer) =>
        ArmDetails(request: sheetRequest, completer: completer),
    DialogType.reserve: (context, sheetRequest, completer) =>
        ReserveDialog(request: sheetRequest, completer: completer),
    DialogType.changePass: (context, sheetRequest, completer) =>
        ChangePassDialog(request: sheetRequest, completer: completer),
  };

  dialogService.registerCustomDialogBuilders(builders);
}
