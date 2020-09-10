import 'repository.dart';

class RepositoryImpl<T, ID> implements Repository<T, ID> {
  List<T> _lista = List<T>();

  List<T> get lista => _lista;
  @override
  T cadastrar(T obj) {
    _lista.add(obj);
    return obj;
  }

  @override
  T alterar(T o) {
    throw UnimplementedError();
  }

  @override
  T buscarPorID(ID o) {
    throw UnimplementedError();
  }

  @override
  void excluir(T o) {
    throw UnimplementedError();
  }

  @override
  List<T> buscarTodos() {
    return lista;
  }
}
