import 'package:flutter/material.dart';
import 'package:waves/presentation/notifiers/playing/playing.dart';

import 'presentation/router/router.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
    required this.playingNotifier,
  });

  final PlayingNotifier playingNotifier;

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      builder: (context, child) => PlayingProvider(
        notifier: playingNotifier,
        child: child!,
      ),
    );
  }
}
