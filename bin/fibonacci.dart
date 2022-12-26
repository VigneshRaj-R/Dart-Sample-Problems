import 'dart:io';

void main(List<String> args) {
  fibonacci();
}

void fibonacci() {
  print("Enter the number for finding its Fibonacci num:");

  var number = stdin.readLineSync();
  int n = int.parse(number!);

  int a = 0, b = 1, c;

  if (n == 0) {
    print("The Fibonacci number of $n is: 0");
  } else if (n == 1) {
    print("The Fibonacci number of $n is: 1");
  } else {
    for (var i = 2; i <= n; i++) {
      c = a + b;
      a = b;
      b = c;
    }
    print("The Fibonacci number of $n is: $b");
  }
}
