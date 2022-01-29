import 'prototype_mixin.dart';

abstract class Clothes with Prototype {
  final String color;
  final String brand;
  final String size;
  
  Clothes({
    required this.color,
    required this.brand,
    required this.size,
  });
}

class Shirt extends Clothes {
  final String print;

  Shirt({
    required String color,
    required String brand,
    required String size,
    required this.print
  }) : super(color: color, brand: brand, size: size);

  
  @override
  Prototype copyWith({String? print, String? color, String? brand, String? size}) {
    return Shirt(
      color: color ?? this.color, 
      brand: brand ?? this.brand, 
      size: size ?? this.size, 
      print: print ?? this.print
    );
  }
  

  @override
  String toString(){
    StringBuffer buffer = StringBuffer();
    buffer.write('Camisa\n');
    buffer.write('  - Cor: $color\n');
    buffer.write('  - Marca: $brand\n');
    buffer.write('  - Tamanho: $size\n');
    buffer.write('  - Estampa: $print\n');
    return buffer.toString();
  }
}


class Pants extends Clothes {
  Pants({
    required String color,
    required String brand,
    required String size,
  }) : super(color: color, brand: brand, size: size);

  
  @override
  Prototype copyWith({String? color, String? brand, String? size}) {
    return Pants(
      color: color ?? this.color, 
      brand: brand ?? this.brand, 
      size: size ?? this.size, 
    );
  }

  @override
  String toString(){
    StringBuffer buffer = StringBuffer();
    buffer.write('Calça\n');
    buffer.write('  - Cor: $color\n');
    buffer.write('  - Marca: $brand\n');
    buffer.write('  - Tamanho: $size\n');
    return buffer.toString();
  }
  
}