import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:waves/presentation/animations/waves/waves.dart';

class Waves extends StatefulWidget {
  const Waves({
    super.key,
    required this.onAnimationEnd,
  });

  final OnAnimationEnd? onAnimationEnd;

  @override
  State<Waves> createState() => _WavesState();
}

class _WavesState extends State<Waves> {
  late SimpleAnimation _controller;

  @override
  void initState() {
    super.initState();
    _controller = SimpleAnimation(
      'rising',
      autoplay: true,
    )..addListener((
        onStart: () {},
        onEnd: widget.onAnimationEnd ?? () {},
      ));
  }

  @override
  void dispose() {
    super.dispose();
    _controller.removeListener();
  }

  @override
  Widget build(BuildContext context) {
    return RiveAnimation.asset(
      'assets/rive/waves.riv',
      fit: BoxFit.cover,
      controllers: [
        _controller,
      ],
    );
  }
}
