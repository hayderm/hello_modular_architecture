// lib/main.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'app.dart';

void main() {
print (" we are here");
  runApp(const ProviderScope(child: HelloWorldApp()));
}