
abstract class Debug {
  Future<String> get categoryDatasource;
  Future<String> get productDatasource;
  static const String SQLITE = 'sqlite';
  static const String SALEOR = 'saleor';
  static const String NULL = 'null';
  static const String FAKE = 'fake';
}

class DebugImpl implements Debug{

  DebugImpl();

  @override
  // TODO: implement categoryDatasource
  Future<String> get categoryDatasource => Future.value(Debug.FAKE);

  @override
  // TODO: implement productDatasource
  Future<String> get productDatasource => Future.value(Debug.FAKE);
}