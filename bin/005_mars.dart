import 'dart:io';
import 'dart:math';

/**
 * Auto-generated code below aims at helping you parse
 * the standard input according to the problem statement.
 **/
void main() {
  List inputs;
  var surfaceN = int.parse(stdin.readLineSync()); // the number of points used to draw the surface of Mars.
  for (var i = 0; i < surfaceN; i++) {
    inputs = stdin.readLineSync().split(' ');
    var landX = int.parse(inputs[0]); // X coordinate of a surface point. (0 to 6999)
    var landY = int.parse(inputs[1]); // Y coordinate of a surface point. By linking all the points together in a sequential fashion, you form the surface of Mars.
  }

  // game loop
  while (true) {
    inputs = stdin.readLineSync().split(' ');
    var X = int.parse(inputs[0]);
    var Y = int.parse(inputs[1]);
    var hSpeed = int.parse(inputs[2]); // the horizontal speed (in m/s), can be negative.
    var vSpeed = int.parse(inputs[3]); // the vertical speed (in m/s), can be negative.
    var fuel = int.parse(inputs[4]); // the quantity of remaining fuel in liters.
    var rotate = int.parse(inputs[5]); // the rotation angle in degrees (-90 to 90).
    var power = int.parse(inputs[6]); // the thrust power (0 to 4).

    // Write an action using print()
    // To debug: stderr.writeln('Debug messages...');


    // 2 integers: rotate power. rotate is the desired rotation angle (should be 0 for level 1), power is the desired thrust power (0 to 4).
    print(vSpeed.abs() < 30 ? '0 0' : '0 4');
  }
}