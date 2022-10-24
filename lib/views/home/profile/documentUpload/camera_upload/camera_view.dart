import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_camera_overlay/flutter_camera_overlay.dart';
import 'package:flutter_camera_overlay/model.dart';
import 'package:stacked/stacked.dart';

import 'package:egczacademy/models/document_type_model.dart';

import 'camera_view_model.dart';

class CameraView extends StatelessWidget {
  final DocumentTypeModel documentTypeModel;
  final ValueChanged<File?> onSelect;
  const CameraView({
    Key? key,
    required this.documentTypeModel,
    required this.onSelect,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CameraViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        backgroundColor: Colors.transparent,
        body: model.isBusy
            ? const Center(
                child: CircularProgressIndicator.adaptive(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    Colors.black,
                  ),
                  backgroundColor: Colors.grey,
                ),
              )
            : FutureBuilder<List<CameraDescription>?>(
                future: availableCameras(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    if (snapshot.data == null) {
                      return const Align(
                          alignment: Alignment.center,
                          child: Text(
                            'No camera found',
                            style: TextStyle(color: Colors.black),
                          ));
                    }
                    return CameraOverlay(
                        snapshot.data!.first,
                        CardOverlay.byFormat(model.format),
                        (XFile file) => showDialog(
                              context: context,
                              barrierColor: Colors.black,
                              builder: (context) {
                                CardOverlay overlay =
                                    CardOverlay.byFormat(model.format);
                                return AlertDialog(
                                    actionsAlignment: MainAxisAlignment.center,
                                    backgroundColor: Colors.black,
                                    title: const Text('Capture',
                                        style: TextStyle(color: Colors.white),
                                        textAlign: TextAlign.center),
                                    actions: [
                                      OutlinedButton(
                                          onPressed: () async {
                                            onSelect(await model.selectDocument(
                                                fileFront: File(file.path),
                                                documentType:
                                                    documentTypeModel));
                                          },
                                          child: const Icon(Icons.done)),
                                      OutlinedButton(
                                          onPressed: () =>
                                              Navigator.of(context).pop(),
                                          child: const Icon(Icons.repeat))
                                    ],
                                    content: SizedBox(
                                        width: double.infinity,
                                        child: AspectRatio(
                                          aspectRatio: overlay.ratio!,
                                          child: Container(
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                              fit: BoxFit.fitWidth,
                                              alignment:
                                                  FractionalOffset.center,
                                              image: FileImage(
                                                File(file.path),
                                              ),
                                            )),
                                          ),
                                        )));
                              },
                            ),
                        info:
                            "Positionnez votre carte d'identité dans le rectangle et assurez-vous que l'image est parfaitement lisible.",
                        label: "Numérisation de la carte d'identité",
                        loadingWidget: const Center(
                          child: CircularProgressIndicator.adaptive(
                            valueColor: AlwaysStoppedAnimation<Color>(
                              Colors.black,
                            ),
                            backgroundColor: Colors.grey,
                          ),
                        ));
                  } else {
                    return const Align(
                        alignment: Alignment.center,
                        child: Center(
                          child: CircularProgressIndicator.adaptive(
                            valueColor: AlwaysStoppedAnimation<Color>(
                              Colors.black,
                            ),
                            backgroundColor: Colors.grey,
                          ),
                        ));
                  }
                },
              ),
      ),
      viewModelBuilder: () => CameraViewModel(),
    );
  }
}
