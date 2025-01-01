import 'package:flutter/material.dart';
import 'package:flutter_ui_learning_showcase/widgets/UniversalFABToHome.dart';

class MentalHealthAppHomeUi extends StatelessWidget {
  const MentalHealthAppHomeUi({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      floatingActionButton: UniversalFABToHome(),
    );
  }
}
