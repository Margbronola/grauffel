import 'package:egczacademy/models/gunModel/gun_model.dart';
import 'package:egczacademy/views/shared/widget/dialog/dialog_widget.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../../app/global.dart';

class ArmDetails extends StatelessWidget {
  final DialogRequest<GunModel>? request;
  final Function(DialogResponse)? completer;
  const ArmDetails({Key? key, this.request, this.completer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DialogWidget(
      title: request!.data!.model!,
      description: request!.data!.description!,
      imageUrl:
          "$urlServer/${request!.data!.image!.path}/${request!.data!.image!.filename}",
    );
  }
}
