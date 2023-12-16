import 'armor_titan.dart';
import 'attack_titan.dart';
import 'beast_titan.dart';
import 'human.dart';
import 'titan.dart';

void main() {
  Titan titan = Titan();
  Armor_titan armor_titan = Armor_titan();
  Attact_titan attact_titan = Attact_titan();
  Beast_titan beast_titan = Beast_titan();
  Human human = Human();

  titan.setPowerPoint(5);
  armor_titan.setPowerPoint(5);
  attact_titan.setPowerPoint(5);
  beast_titan.setPowerPoint(5);
  human.setPowerPoint(5);

  print(titan.getPowerPoint());
  print(armor_titan.getPowerPoint());
  print(attact_titan.getPowerPoint());
  print(beast_titan.getPowerPoint());
  print(human.getPowerPoint());
}
