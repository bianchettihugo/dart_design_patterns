
import 'dart:math';

class Singleton {
  final id = Random().nextInt(100);
  static final Singleton _singleton = Singleton._internal();

  factory Singleton() {
    return _singleton;
  }

  Singleton._internal();

  @override
  String toString() {
    return 'Singleton ID: $id';
  }
}



void main(List<String> arguments) {
  final singleton = Singleton();
  print('Singleton: $singleton');
  final sameSingleton = Singleton();
  print('Singleton: $sameSingleton');
}
