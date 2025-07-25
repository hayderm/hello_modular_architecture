// lib/features/hello_world/data/hello_repository.dart

abstract class IHelloRepository {
  String getHelloMessage();
}

class HelloRepository implements IHelloRepository {
  @override
  String getHelloMessage() {
    return "Hello from repository!";
  }
}
