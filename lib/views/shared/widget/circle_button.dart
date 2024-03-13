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
        foregroundColor: Colors.white10, backgroundColor: Colors.transparent,
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(5), // <-- Splash color
      ),
      child: Center(child: child),
    );
  }
}
