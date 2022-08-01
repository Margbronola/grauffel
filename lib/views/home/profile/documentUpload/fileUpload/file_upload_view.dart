import 'package:egczacademy/views/shared/color.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'file_upload_viewModel.dart';

class FileUploadView extends StatelessWidget {
  const FileUploadView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<FileUploadViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
          body: Column(
        children: [
          Expanded(
              child: Container(
            color: backgroundColor,
          )),
          Expanded(
              child: Container(
            color: kcWhite,
          ))
        ],
      )),
      viewModelBuilder: () => FileUploadViewModel(),
    );
  }
}
