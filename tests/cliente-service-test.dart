import '../models/cliente-pf.dart';
import '../models/cliente.dart';
import '../repositories/cliente-repository.dart';
import '../repositories/repository.dart';
import '../services/cliente-service.dart';
import 'package:test/test.dart';

class ClienteServiceTest {
  main() {
    test("deveCadastrarClientePF", () {
      //mock
      ClientePF cliPF = new ClientePF();
      cliPF.id = 100;
      cliPF.nome = "Jão";
      cliPF.sobreNome = "da Silva";
      cliPF.cpf = "999.999.999-99";

      //Dependencia
      Repository<Cliente, int> repository = new ClienteRepository();
      //DI
      ClienteService clienteService = new ClienteService(repository);
      clienteService.cadastrar(cliPF);
    });
  }
}
