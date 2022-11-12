import 'dart:convert';
import 'dart:io';
import 'dart:async';
import 'dart:math';

void main() {
  int n = int.parse(stdin.readLineSync()!);
  int proiz = 1;
  for (int i = 1; i <= n; i++) {
    if (i % 3 == 0) {
      proiz *= i;
    }
  }
  print(proiz);
}
