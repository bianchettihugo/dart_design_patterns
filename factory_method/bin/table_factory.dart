import 'table.dart';

abstract class TableFactory {
  Table createTable();
}

class WoodenTableFactory extends TableFactory {
  @override
  Table createTable() {
    return WoodenTable();
  } 
}

class IronTableFactory extends TableFactory {
  @override
  Table createTable() {
    return IronTable();
  } 
}