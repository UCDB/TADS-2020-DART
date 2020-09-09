class CRUD<T> {
  List<T> _lista = List<T>();

  List<T> get lista => _lista;

  cadastrar(T obj) {
    _lista.add(obj);
  }
}
