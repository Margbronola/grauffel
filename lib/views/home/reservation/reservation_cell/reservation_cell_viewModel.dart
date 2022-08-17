import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class ReservationCellViewModel extends BaseViewModel {
  FocusNode commentFocusNode = FocusNode();

  TextEditingController commentTextController = TextEditingController();
  bool isCommentFucos = false;

  init() {
    commentFocusNode.addListener(() {
      isCommentFucos = commentFocusNode.hasFocus;
      notifyListeners();
    });
  }
}
