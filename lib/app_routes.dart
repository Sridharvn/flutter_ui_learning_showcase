import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_ui_learning_showcase/pages/smart_home_ui/smart_home_ui.dart';
import 'package:flutter_ui_learning_showcase/main.dart';

final GoRouter appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) =>
          const MyHomePage(title: 'UI Learning Showcase'),
    ),
    GoRoute(
      path: '/smartHomeUI',
      builder: (context, state) => const SmartHomeUi(),
    ),
  ],
);
