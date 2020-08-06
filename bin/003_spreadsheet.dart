import 'dart:io';

void main() {
  List inputs;
  var N = int.parse(stdin.readLineSync());

  // READ
  var cells = [];
  for (var i = 0; i < N; i++) {
    inputs = stdin.readLineSync().split(' ');
    String operation = inputs[0];
    String arg1 = inputs[1];
    String arg2 = inputs[2];
    cells.add(Cell(operation, arg1, arg2));
  }

  // CALCULATE
  var toCalculate = true;
  while(toCalculate) {
    cells.forEach((cell) {
      compute(cell, cells);
    });
    toCalculate = cells.where((cell) => cell.result == null).isNotEmpty;
  }

  // PRINT
  cells.forEach((element) {
    print(element.result);
  });
}

int toVal(String val, List cells) {
  if (val == null || val.startsWith('_')) {
    return null;
  } else if(val.startsWith('\$')) {
    Cell next = cells.elementAt(int.parse(val.substring(1)));
    return next.result;
  } else {
    return int.parse(val);
  }
}

void compute(Cell cell,List cells) {
  var val1 = toVal(cell.arg1, cells);
  var val2 = toVal(cell.arg2, cells);
  if (val1 != null && cell.operation == 'VALUE') {
    cell.result = val1;
  }
  if (val1 != null && val2 != null && cell.operation == 'ADD') {
    cell.result = val1 + val2;
  }
  if (val1 != null && val2 != null && cell.operation == 'SUB') {
    cell.result = val1 - val2;
  }
  if (val1 != null && val2 != null && cell.operation == 'MULT') {
    cell.result = val1 * val2;
  }
}

class Cell {
  String operation;
  String arg1;
  String arg2;
  int result;

  Cell(this.operation, this.arg1, this.arg2);
}
