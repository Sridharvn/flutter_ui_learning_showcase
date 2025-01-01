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
      child: const Icon(Icons.home),
      backgroundColor: Colors.teal,
    );
  }
}
