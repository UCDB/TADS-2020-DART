import 'dart:ffi';

import '../CRUD.dart';
import '../models/cliente.dart';
import 'repository-impl.dart';

class ClienteRepository extends RepositoryImpl<Cliente, Int64> {}
