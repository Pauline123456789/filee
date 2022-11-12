import 'dart:io';
import 'dart:math';
void main() {
print("введите минимальное число");
int min = int.parse(stdin.readLineSync()!);
print("введите максимальное число");
int max = int.parse(stdin.readLineSync()!);
List<int> nums = zapolnenie(min, max);
for(int i = 0;i<10;i++){
stdout.write("${nums[i]} ");
}
}

List<int> zapolnenie(int min, int max){
List<int> nums = [];
for(int i = 0;i<10;i++){
nums.add(Random().nextInt(max-min)+min);
}
return(nums);
}
