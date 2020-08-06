import 'dart:io';
import 'dart:math';

void main() {

  while (true) {
    var kill = 0;
    var max = 0;
    for (var i = 0; i < 8; i++) {
      var mountainH = int.parse(stdin.readLineSync());

      if(mountainH > max) {
        max = mountainH;
        kill = i;
      }
    }

    print(kill);
  }

}

void final_solution() {

  while (true) {

    var m = Iterable.generate(8, (i) => int.parse(stdin.readLineSync())).toList();
    var maxIndex = m.indexOf(m.reduce(max));

    print(maxIndex);
  }
}

