import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

typedef ActiveChangedListener = ({VoidCallback onStart, VoidCallback onEnd});

typedef OnAnimationEnd = void Function();

extension SimpleAnimationExtension on SimpleAnimation {
  static VoidCallback? activeListener;

  void addListener(ActiveChangedListener listener) {
    activeListener = () {
      if (isActive) {
        listener.onStart();
      } else {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          listener.onEnd();
        });
      }
    };
    isActiveChanged.addListener(activeListener!);
  }

  void removeListener() {
    isActiveChanged.removeListener(activeListener!);
  }
}
