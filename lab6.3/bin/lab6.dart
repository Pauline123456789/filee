import 'dart:convert';
import 'dart:io';
import 'dart:async';
import 'dart:math';
void main(){
int nums = int.parse(stdin.readLineSync()!);

if(nums%10==0 && nums%2==0){
 print("является");
} else{print("не является");}

}
