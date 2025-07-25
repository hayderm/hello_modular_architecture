// hello_usecase.dart
import '../data/hello_repository.dart'; // or better: use a barrel file for domain

class HelloUseCase {
  final IHelloRepository _repo;

  HelloUseCase(this._repo);

  String getMessage() {
    return _repo.getHelloMessage();
  }
}
