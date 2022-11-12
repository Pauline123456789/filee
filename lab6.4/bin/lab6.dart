import 'dart:convert';
import 'dart:io';
import 'dart:async';
import 'dart:math';
void main(){
List<int> nums = [];
bool pr_1 = true;
while(pr_1){
 String element = stdin.readLineSync()!;
 if(element != ""){
   try{if(int.parse(element)>=0){
     nums.add(int.parse(element));
   } else{pr_1 = false;}}
   catch(e){
     print('Error: $e');
   }
 }else{pr_1 = false;}
}

int summa = 0;
try{
 int a = int.parse(stdin.readLineSync()!);
 for(int i = 0; i<nums.length;i++){
 if(nums[i]%a ==0){
   summa += nums[i];
 }
}
} catch(e){
     print('Error: $e');
   }


print(summa);
}
