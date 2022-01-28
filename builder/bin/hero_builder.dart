import 'hero.dart';

class HeroBuilder {
  String armor = '';
  String skills = '';
  String weapons = '';

  HeroBuilder reset() {
    armor = '';
    skills = '';
    weapons = '';
    return this;
  }

  HeroBuilder buildArmor([String armor = '']) {
    this.armor = armor;
    return this;
  }

  HeroBuilder buildWeapons([String weapons = '']) {
    this.weapons = weapons;
    return this;
  }

  HeroBuilder buildSkills([String skills = '']) {
    this.skills = skills;
    return this;
  }

  String get type => 'Hero';

  Hero get hero =>  Hero(
    type: type, 
    armor: armor, 
    weapons: weapons, 
    skills: skills
  );
}

class WarriorBuilder extends HeroBuilder {

  @override
  HeroBuilder buildArmor([String armor = '']) {
    this.armor = 'Armadura de aço';
    return this;
  }

  @override
  HeroBuilder buildSkills([String skills = '']) {
    this.skills = 'Ataque 01, Ataque 02';
    return this;
  }

  @override
  HeroBuilder buildWeapons([String weapons = '']) {
    this.weapons = 'Espada de aço';
    return this;
  }

  @override
  Hero get hero => Hero(
    type: type, 
    armor: armor, 
    weapons: weapons, 
    skills: skills
  );

  @override
  String get type => 'Guerreiro';
}


class SorcererBuilder extends HeroBuilder {

  @override
  HeroBuilder buildArmor([String armor = '']) {
    this.armor = 'Nenhuma';
    return this;
  }

  @override
  HeroBuilder buildSkills([String skills = '']) {
    this.skills = 'Magia 01, Magia 02, Magia 03';
    return this;
  }

  @override
  HeroBuilder buildWeapons([String weapons = '']) {
    this.weapons = 'Cajado';
    return this;
  }

  @override
  Hero get hero => Hero(
    type: type,
    armor: armor, 
    weapons: weapons, 
    skills: skills
  );

  @override
  String get type => 'Feiticeiro';
}