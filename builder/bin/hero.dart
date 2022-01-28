import 'hero_builder.dart';

class Hero {
  final String type;
  final String armor;
  final String weapons;
  final String skills;

  Hero({
    required this.type,
    required this.armor, 
    required this.weapons, 
    required this.skills
  });

  factory Hero.build(HeroBuilder builder){
    return builder.hero;
  }

  @override
  String toString() {
    StringBuffer buffer = StringBuffer();
    buffer.write('$type\n');
    buffer.write('  - Armadura: $armor\n');
    buffer.write('  - Arma: $weapons\n');
    buffer.write('  - Habilidades: $skills\n');
    return buffer.toString();
  }
  
}