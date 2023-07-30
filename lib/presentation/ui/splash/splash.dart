import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:waves/presentation/animations/waves/waves.dart';
import 'package:waves/presentation/notifiers/playing/playing.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  void _goHome(BuildContext context) {
    context.go('/home');
  }

  void _animateToHome(BuildContext context) {
    PlayingProvider.of(context).playing = true;
  }

  @override
  Widget build(BuildContext context) {
    PlayingNotifier playingNotifier = PlayingProvider.of(context);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => _animateToHome(context),
        child: const Icon(Icons.arrow_forward),
      ),
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          const Center(
            child: Text(
              'Waves transition',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          AnimatedBuilder(
            animation: playingNotifier,
            builder: (context, _) {
              return playingNotifier.playing
                  ? Waves(
                      onAnimationEnd: () => _goHome(context),
                    )
                  : const SizedBox();
            },
          ),
        ],
      ),
    );
  }
}
