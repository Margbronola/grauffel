import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../../app/app.locator.dart';
import '../../../shared/widget/dialog/setup_dialog_ui.dart';

class ReservationCellViewModel extends BaseViewModel {
  FocusNode commentFocusNode = FocusNode();
  final DialogService _dialogService = locator<DialogService>();

  final TextEditingController commentTextController = TextEditingController();
  bool isCommentFucos = false;

  init() {
    commentFocusNode.addListener(() {
      isCommentFucos = commentFocusNode.hasFocus;
      notifyListeners();
    });
  }

  //TODO: need to send email before showing
  void showModalSuccessReservation() {
    _dialogService.showCustomDialog(
        mainButtonTitle: "ok",
        variant: DialogType.reservesuccess,
        barrierDismissible: false);
  }
}
