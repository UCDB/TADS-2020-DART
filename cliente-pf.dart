import 'cliente.dart';

class ClientePF extends Cliente {
  String sobreNome;
  String cpf;

  @override
  String toString() {
    return "$nome $sobreNome $cpf";
  }
}
