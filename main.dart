import 'cliente-pf-crud.dart';
import 'cliente-pf.dart';
import 'cliente-pj.dart';
import 'cliente.dart';

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

  ClienteCRUD crud = ClienteCRUD();
  crud.cadastrar(cliPF);
  crud.cadastrar(
      ClientePF.p("Virmerson", "Bento dos Santos", "111.111.111-11"));
  crud.cadastrar(cliPJ);

  crud.clientes.forEach((element) {
    print(element);
  });
}
