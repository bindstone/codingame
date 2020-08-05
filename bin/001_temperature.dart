import 'dart:io';

void main() {

  var n = int.parse(stdin.readLineSync());
  var inputs = stdin.readLineSync().split(' ');
  var temperature = 9999;

  for (var i = 0; i < n; i++) {
    var t = int.parse(inputs[i]);

    if (t.abs() == temperature.abs() && t != temperature) temperature = temperature.abs();
    if (t.abs() < temperature.abs()) temperature = t;
  }

  temperature = n == 0 ? 0 : temperature;
  print(temperature);

}

void final_solution() {

    int.parse(stdin.readLineSync()); // Empty Read

    var ln = stdin.readLineSync();
    ln = ln.isEmpty ? '0' : ln;

    var temps = ln.split(' ').map(int.parse).toList();

    temps.sort((x, y) => (x.abs() - y.abs() == 0) ? y - x : x.abs() - y.abs());

    print(temps[0]);

}
