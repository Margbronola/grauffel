import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../app/global.dart';

class Myloader extends StatefulWidget {
  final bool withBackground;
  final Color logoColor;
  final Color? backColor;
  const Myloader({
    Key? key,
    this.withBackground = true,
    this.logoColor = Colors.white,
    this.backColor,
  }) : super(key: key);

  @override
  State<Myloader> createState() => _MyloaderState();
}

class _MyloaderState extends State<Myloader> with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.elasticOut,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      turns: _animation,
      child: Center(
          child: Image.asset(
        imageSmallLogo,
        width: 60.h,
        color: widget.logoColor,
      )),
    );
  }
}
