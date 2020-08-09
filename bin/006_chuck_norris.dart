import 'dart:io';
import 'dart:math';

void main() {
  var result = '';
  stdin.readLineSync()
      .codeUnits
      .fold([], (previousValue, element) {
      var str = element.toRadixString(2).split('');
      return previousValue
        ..addAll(List.generate(7-str.length, (_) => '0'))
        ..addAll(str);
      })
      .fold(null, (previousValue, element) {
        result = element != previousValue ? '${result} ${element == "0" ? "00": "0"} 0' : '${result}0';
        return element;
      });
  print(result.substring(1));
}