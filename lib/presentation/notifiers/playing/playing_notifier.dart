import 'package:flutter/material.dart';

class PlayingNotifier extends ChangeNotifier {
  bool _playing = false;

  bool get playing => _playing;

  set playing(bool value) {
    _playing = value;
    notifyListeners();
  }
}
