import 'package:flutter_riverpod/flutter_riverpod.dart';

final debugLogProvider = StateNotifierProvider<DebugLogger, List<String>>((ref) {
  return DebugLogger();
});

class DebugLogger extends StateNotifier<List<String>> {
  DebugLogger() : super([]);

  void log(String message) {
    final timestamp = DateTime.now().toIso8601String();
    state = [...state, "[$timestamp] $message"];
  }

  void clear() {
    state = [];
  }
}
