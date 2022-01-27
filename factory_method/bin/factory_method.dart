import 'table.dart';
import 'table_factory.dart';


Table createTable(TableFactory tableFactory){
  return tableFactory.createTable();
}


void main(List<String> arguments) {
  // Wooden factory
  print(createTable(WoodenTableFactory()).description);

  // Iron factory
  print(createTable(IronTableFactory()).description);

}
