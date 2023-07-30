import 'package:flutter/material.dart';
import 'package:waves/presentation/notifiers/playing/playing_notifier.dart';

class PlayingProvider extends InheritedNotifier<PlayingNotifier> {
  const PlayingProvider({
    super.key,
    required Widget child,
    required PlayingNotifier notifier,
  }) : super(child: child, notifier: notifier);

  static PlayingNotifier of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<PlayingProvider>()!
        .notifier!;
  }
}
