import 'hero_director.dart';

void main(List<String> arguments) {
  HeroDirector director = HeroDirector();
  print(director.buildWarrior());
  print(director.buildSorcerer());
  print(director.buildHybrid());
  print(director.buildCustom());
}
