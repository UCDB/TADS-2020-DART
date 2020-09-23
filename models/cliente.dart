import 'entity.dart';

class Cliente extends Entity {
  String _nome;
  set nome(String nome) {
    this._nome = nome;
  }

  get nome {
    return _nome;
  }

  @override
  String toString() {
    return _nome;
  }
}
