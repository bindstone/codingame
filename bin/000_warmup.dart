import 'dart:io';

void main(List<String> arguments) {

  while (true) {
    var enemy1 = stdin.readLineSync(); // name of enemy 1
    var dist1 = int.parse(stdin.readLineSync()); // distance to enemy 1
    var enemy2 = stdin.readLineSync(); // name of enemy 2
    var dist2 = int.parse(stdin.readLineSync()); // distance to enemy 2

    print(dist1 < dist2 ? enemy1 : enemy2);
  }

}
