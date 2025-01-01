import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class UniversalFABToHome extends StatelessWidget {
  const UniversalFABToHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        context.go('/');
      },
      backgroundColor: Colors.teal,
      child: const Icon(
        Icons.home,
        color: Colors.white,
      ),
    );
  }
}
