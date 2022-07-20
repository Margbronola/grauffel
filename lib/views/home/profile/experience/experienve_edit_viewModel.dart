import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class ExperienceEditViewModel extends BaseViewModel {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController experienceController = TextEditingController();
  FocusNode experienceNode = FocusNode();

  void init() {
    experienceController.text =
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean tempus a nisi nec dapibus. Proin velit nulla, ultricies at leo quis, accumsan malesuada ipsum. Etiam porttitor pulvinar ipsum vel maximus. Morbi vitae malesuada tortor, ut rhoncus tellus. Morbi rhoncus metus eu diam venenatis interdum. ";
  }

  void save() {}
}
