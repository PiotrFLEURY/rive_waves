import 'package:flutter/material.dart';
import 'package:waves/app.dart';
import 'package:waves/presentation/notifiers/playing/playing.dart';

void main() {
  /// Initialize notifiers
  final playingNotifier = PlayingNotifier();

  /// Run app
  runApp(
    MyApp(
      playingNotifier: playingNotifier,
    ),
  );
}
