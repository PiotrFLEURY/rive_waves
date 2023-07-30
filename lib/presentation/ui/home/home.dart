import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:waves/presentation/notifiers/playing/playing.dart';
import 'package:waves/presentation/styles/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: InkWell(
          onTap: () {
            PlayingProvider.of(context).playing = false;
            context.pop();
          },
          child: const Text(
            'Home screen',
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
