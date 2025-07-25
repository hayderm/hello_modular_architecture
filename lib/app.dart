// lib/app.dart
import 'package:flutter/material.dart';
import 'routes/app_router.dart';

class HelloWorldApp extends StatelessWidget {
  const HelloWorldApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter,
      title: 'Modular Hello App',
    );
  }
}