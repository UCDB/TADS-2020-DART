import 'dart:math';

import 'package:test/test.dart';
import 'package:matcher/matcher.dart';
import '../models/cliente-pf.dart';
import '../models/cliente.dart';
import '../repositories/cliente-repository.dart';
import '../repositories/repository.dart';
import '../services/cliente-service.dart';
import '../exceptions/ServiceException.dart';

void main() {
  test('Buscar todos no banco com Future', () async {
//Dependencia
    Repository<Cliente, int> repository = ClienteRepository();
    //DI
    var clienteService = ClienteService(repository);

    var buscarTodosBanco = await clienteService.buscarTodosBanco();

    expect(buscarTodosBanco, []);
    //expect(buscarTodosBanco , );
  });

  test('Deve Cadastrar ClientePF sem Exception', () {
    //mock
    var cliPF = ClientePF();
    cliPF.id = 100;
    cliPF.nome = 'Jão';
    cliPF.sobreNome = 'da Silva';
    cliPF.cpf = '999.999.999-99';

    //Dependencia
    Repository<Cliente, int> repository = ClienteRepository();
    //DI
    var clienteService = ClienteService(repository);

    expect(clienteService.cadastrar(cliPF), isNotNull);
  });

  test('Deve Cadastrar ClientePF', () {
    //mock
    var cliPF = ClientePF();
    cliPF.id = 100;
    cliPF.nome = 'Jão';
    cliPF.sobreNome = 'da Silva';
    cliPF.cpf = '999.999.999-99';

    //Dependencia
    Repository<Cliente, int> repository = ClienteRepository();
    //DI
    var clienteService = ClienteService(repository);
    clienteService.cadastrar(cliPF);

    var length = clienteService.buscarTodos().length;
    expect(length, 1);
  });

  test('Deve Alterar Cliente', () {
    //mock
    var cliPF = ClientePF();
    cliPF.id = 100;
    cliPF.nome = 'Jão';
    cliPF.sobreNome = 'da Silva';
    cliPF.cpf = '999.999.999-99';

    //Dependencia
    Repository<Cliente, int> repository = ClienteRepository();
    //DI
    var clienteService = ClienteService(repository);
    clienteService.cadastrar(cliPF);
    cliPF.nome = 'Zé';
    cliPF.sobreNome = ' da silva';
    cliPF.cpf = '123';

    ClientePF objAlterado = clienteService.alterar(cliPF);
    expect(objAlterado.nome, 'Zé');
  });

  test('Deve Lançar Exception ao Cadastrar Cliente', () {
    //mock
    var cliPF = ClientePF();
    cliPF.id = 100;
    cliPF.nome = 'Jão  non on on oo no non on on on ono no no no no no non on ';
    cliPF.sobreNome = 'da Silva';
    cliPF.cpf = '999.999.999-99';

    //Dependencia
    Repository<Cliente, int> repository = ClienteRepository();
    //DI
    var clienteService = ClienteService(repository);
    // try {
    //   clienteService.cadastrar(cliPF);
    //   assert(false, 'Exception nao lancada');
    // } on ServiceException {
    //   assert(true, 'Sucesso no lancamento da exception');
    // }
    expect(() => clienteService.cadastrar(cliPF),
        throwsA(TypeMatcher<ServiceException>()));
  });
}
