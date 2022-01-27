abstract class Table {
  String get description;
}

class WoodenTable extends Table {
  @override
  String get description => 'Mesa de madeira';
}

class IronTable extends Table {
  @override
  String get description => 'Mesa de ferro';
  
}