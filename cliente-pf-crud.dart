import 'cliente-pf.dart';
import 'cliente-pj.dart';
import 'cliente.dart';

class ClienteCRUD {
  List<Cliente> _clientes = new List<Cliente>();

  List<Cliente> get clientes => _clientes;

  cadastrar(Cliente cliente) {
    clientes.add(cliente);
  }
}
