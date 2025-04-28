import 'package:egczacademy/models/equipment_model.dart';
import 'package:egczacademy/views/shared/widget/dialog/dialog_widget.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';

class EquipmentDetails extends StatelessWidget {
  final DialogRequest<EquipmentModel>? request;
  final Function(DialogResponse)? completer;
  const EquipmentDetails({Key? key, this.request, this.completer})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DialogWidget(
        title: request!.data!.name,
        description: request!.data!.description,
        imageUrl: request!.data!.image_thumb_url,
        calibre: "",
        brandName: request!.data!.brand!.name);
  }
}
