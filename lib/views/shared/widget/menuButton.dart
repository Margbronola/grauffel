// ignore_for_file: file_names

import 'package:flutter/material.dart';
import '../../home/settings/settings_view.dart';

class MenuButton extends StatelessWidget {
  const MenuButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: const Icon(
        Icons.more_vert,
        size: 30,
      ),
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const SettingsView()));
      },
    );
  }
}
