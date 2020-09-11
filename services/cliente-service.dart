import 'dart:ffi';

import '../models/cliente.dart';

import '../repositories/repository.dart';

class ClienteService {
  Repository<Cliente, int> repository;

  ClienteService(Repository<Cliente, int> repository) {
    this.repository = repository;
  }

  cadastrar(Cliente cliente) {
    if (cliente.nome.length > 100) throw ("Cliente com nome muito grande");

    repository.cadastrar(cliente);
  }

  List<Cliente> buscarTodos() {
    return repository.buscarTodos();
  }
}
