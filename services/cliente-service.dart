import '../models/cliente.dart';

import '../repositories/repository.dart';

import '../exceptions/ServiceException.dart';

class ClienteService {
  Repository<Cliente, int> repository;

  ClienteService(Repository<Cliente, int> repository) {
    this.repository = repository;
  }

  Cliente cadastrar(Cliente cliente) {
    if (cliente.nome.length > 20) {
      throw ServiceException('Cliente com nome > 20 caracteres');
    }
    return repository.cadastrar(cliente);
  }

  List<Cliente> buscarTodos() {
    return repository.buscarTodos();
  }

  Cliente alterar(Cliente cliente) {
    return repository.alterar(cliente);
  }

  Future<List<Cliente>> buscarTodosBanco() {
    return Future.delayed(
        Duration(seconds: 10), () => repository.buscarTodos());
  }
}
