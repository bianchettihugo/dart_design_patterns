import 'clothes.dart';

void main(List<String> arguments) {
  final shirt = Shirt(color: 'Vermelho', brand: 'Acostamento', size: 'M', print: 'Logo Acostamento');
  print('Camisa: $shirt');
  print('Cópia da camisa: ${shirt.copyWith()}');
  print('Variante da camisa: ${shirt.copyWith(color: 'Azul')}');

  final pants = Pants(color: 'Preta', brand: 'Desconhecido', size: 'M');
  print('Calça: $pants');
  print('Cópia da calça: ${pants.copyWith()}');
}
