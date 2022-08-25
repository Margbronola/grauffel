import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../../../app/app.locator.dart';
import '../../../../shared/widget/dialog/setup_dialog_ui.dart';

class SubmitionViewModel extends BaseViewModel {
  final DialogService _dialogService = locator<DialogService>();
  FocusNode commentFocusNode = FocusNode();

  TextEditingController commentTextController = TextEditingController();
  bool isCommentFucos = false;

  init() {
    commentFocusNode.addListener(() {
      isCommentFucos = commentFocusNode.hasFocus;
      notifyListeners();
    });
  }

  void showCard() async {
    print("showCard");
    var response = await _dialogService.showCustomDialog(
        mainButtonTitle: "ok",
        variant: DialogType.reserve,
        barrierDismissible: true);

    if (response != null) {
      if (response.confirmed) {
        print("ok");
      } else {
        print("cancel");
      }
    }
  }

  void reserve() {}
}
