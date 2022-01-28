import 'hero.dart';
import 'hero_builder.dart';

class HeroDirector {
  final WarriorBuilder warrior = WarriorBuilder();
  final SorcererBuilder sorcerer = SorcererBuilder();
  final HeroBuilder hero = HeroBuilder();

  Hero buildWarrior(){
    warrior.reset();
    return warrior
          .buildArmor()
          .buildSkills()
          .buildWeapons()
          .hero;
  }

  Hero buildSorcerer(){
    sorcerer.reset();
    return sorcerer
          .buildArmor()
          .buildSkills()
          .buildWeapons()
          .hero;
  }
  
  Hero buildHybrid(){
    warrior.reset(); sorcerer.reset();
    return Hero(
      type: 'Híbrido', 
      armor: warrior.buildArmor().armor, 
      weapons: sorcerer.buildWeapons().weapons, 
      skills: sorcerer.buildSkills().skills
    );
  }

  Hero buildCustom(){
    hero.reset();
    return hero
          .buildArmor('Armadura de madeira')
          .buildSkills('Nenhuma')
          .buildWeapons('Nenhuma')
          .hero;
  }

}