import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../app/global.dart';

class CustomLoader extends StatefulWidget {
  final bool withBackground;
  const       CustomLoader({
    Key? key,
    this.withBackground = true,
  }) : super(key: key);

  @override
  State<CustomLoader> createState() => _CustomLoaderState();
}

class _CustomLoaderState extends State<CustomLoader>
    with TickerProviderStateMixin {
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
    return Container(
      decoration: BoxDecoration(
          color: widget.withBackground ? null : Colors.black.withOpacity(0.8),
          image: !widget.withBackground
              ? null
              : const DecorationImage(
                  image: AssetImage(imageOwner), fit: BoxFit.fill)),
      child: RotationTransition(
        turns: _animation,
        child: Center(
            child: Image.asset(
          imageSmallLogo,
          width: 60.h,
        )),
      ),
    );
  }
}
