import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final Function()? onTap;
  final Widget child;
  const CircleButton({
    Key? key,
    this.onTap,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(5),
        primary: Colors.transparent, // <-- Button color
        onPrimary: Colors.white10, // <-- Splash color
      ),
      child: Center(child: child),
    );
  }
}
