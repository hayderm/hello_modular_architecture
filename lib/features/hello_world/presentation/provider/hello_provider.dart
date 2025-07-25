/*
// lib/features/hello_world/presentation/provider/hello_provider.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/hello_usecase.dart';

final helloProvider = Provider<String>(
        (ref) {
  final usecase = HelloUseCase();
  return usecase.getMessage();
}
);
*/

// hello_provider.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/hello_usecase.dart';
import '../../data/hello_repository.dart';

final repositoryProvider = Provider<IHelloRepository>((ref) {
  return HelloRepository(); // 💡 we can swap this with a mock in tests
});

final usecaseProvider = Provider<HelloUseCase>((ref) {
  final repo = ref.watch(repositoryProvider);
  return HelloUseCase(repo); // 👈 Injecting repository
});

final helloProvider = Provider<String>((ref) {
  return ref.watch(usecaseProvider).getMessage();
});