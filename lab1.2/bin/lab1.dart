import 'dart:io';
import 'dart:math';
void main() {
double sum = 0;
double multiply = 1;
double count = 0;
double num = 1;

while (num != 0) {
num = double.parse(stdin.readLineSync()!);
sum += num;

if (num != 0) {
multiply *= num;
count++;
}
}
print("сумма - ${sum}");
print("Произведение - ${multiply}");
print("Среднее - ${sum / count}");
}
