import 'dart:io';

class Pos {
  int x;
  int y;
  Pos(this.x, this.y);
}

void main(){
  var input = stdin.readLineSync().split(' ');
  var light = Pos(int.parse(input[0]),int.parse(input[1]));
  var thor = Pos(int.parse(input[2]),int.parse(input[3]));
  while(true) {
    var move='';
    if (thor.y < light.y) {move = 'S'; thor.y++;}
    if (thor.y > light.y) {move = 'N'; thor.y--;}
    if (thor.x < light.x) {move += 'E'; thor.x++;}
    if (thor.x > light.x) {move += 'W'; thor.x--;}
    print(move);
  }
}
