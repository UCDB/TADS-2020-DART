import 'dart:ffi';

import 'models/cliente-pf.dart';
import 'models/cliente-pj.dart';
import 'models/cliente.dart';

import 'repositories/cliente-repository.dart';
import 'repositories/repository-impl.dart';
import 'repositories/repository.dart';
import 'services/cliente-service.dart';

main() {
  ClientePF cliPF = new ClientePF();
  cliPF.nome = "Jão";
  cliPF.sobreNome = "da Silva";
  cliPF.cpf = "999.999.999-99";

  ClientePJ cliPJ = new ClientePJ();
  cliPJ.nome = "UCDB";
  cliPJ.razaoSocial = "Universidade Católica Dom Bosco";
  cliPJ.cnpj = "11.111.111/1111-11";

  Cliente cli = cliPF;
  Cliente cli2 = new Cliente();
  cli2.nome = "Carlos";
  // print(cli); //Jão da Silva 999.999.999-99
  // print(cli2); //instance of 'Cliente'
  // print(cliPF); //instance of 'ClientePF'
  // print(cliPJ); // instance of 'ClientePJ'

  Repository<Cliente, Int64> repository = new ClienteRepository();
  ClienteService clienteService = new ClienteService(repository);
  clienteService.cadastrar(cliPF);
  clienteService.cadastrar(cliPJ);
  clienteService.cadastrar(cli);

  clienteService.buscarTodos().forEach((element) {
    print(element);
  });
}
