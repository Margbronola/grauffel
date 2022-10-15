import 'package:egczacademy/models/ammunitions_model.dart';
import 'package:egczacademy/views/shared/widget/dialog/dialog_widget.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';

class AmmunitionDetails extends StatelessWidget {
  final DialogRequest<AmmunitionsModel>? request;
  final Function(DialogResponse)? completer;
  const AmmunitionDetails({Key? key, this.request, this.completer})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DialogWidget(
      title: request!.data!.name,
      description: request!.data!.description,
      imageUrl: request!.data!.image,
      brandName: request!.data!.brand!.name,
    );
  }
}
