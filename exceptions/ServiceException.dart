class ServiceException implements Exception {
  final String msg;
  const ServiceException([this.msg]);
  @override
  String toString() => msg;
}
