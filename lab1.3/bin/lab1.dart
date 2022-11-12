import 'dart:io';
import 'dart:math';
void main() {
String max = "";
String min = "";
String num = " ";
bool lishnei = true;

while (num != "") {
num = stdin.readLineSync()!;
if(lishnei){
min = num;
lishnei = false;
}

if(num != ""){
if(num.length>max.length){
max = num;
}
if(num.length<min.length){
min = num;
}
}
}

print("max - ${max}");
print("min - ${min}");
}