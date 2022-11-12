import 'dart:io';
import 'dart:math';

void main(){

List numbers = [5, 78, 98, 45, 23, 55, 2, 12 , 30, 88];
int min = numbers.last;
int minindex = 0;
for (int i = 0; i < numbers.length; i++){


if (numbers [i] < min)
  {
  min = numbers[i];
  minindex = i;
  }

}
print("Индекс минимальный элемент - $minindex");
}