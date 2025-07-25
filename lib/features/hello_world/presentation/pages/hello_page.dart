// lib/features/hello_world/presentation/pages/hello_page.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../provider/hello_provider.dart';

class HelloPage extends ConsumerWidget {
  const HelloPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final message = ref.watch(helloProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('Hello 2 more and more hello')),
      body: Center(
        child: Text(message, style: const TextStyle(fontSize: 24)),
      ),
    );
  }
}