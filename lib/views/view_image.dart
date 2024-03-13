import 'dart:io';

import 'package:flutter/material.dart';

class ViewImage extends StatelessWidget {
  final File? image;
  const ViewImage({
    Key? key,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Image.file(image!));
  }
}
