import 'dart:convert';
import 'dart:io';
import 'dart:async';
import 'dart:math';


void main() async {
 final file = File('numsTask1.txt');
 String nums_txt = "";
 Stream<String> lines = file
     .openRead()
     .transform(utf8.decoder) // Decode bytes to UTF-8.
     .transform(LineSplitter()); // Convert stream to individual lines.
 try {
   await for (var line in lines) {
     nums_txt += line;
   }
 } catch (e) {
   print('Error: $e');
 }

 List<int> ai = [];
 String vrem = "";
 for (int i = 0; i < nums_txt.length; i++) {
   if (nums_txt[i] != " ") {
     vrem += nums_txt[i];
   }
   if (nums_txt[i] == " " || i + 1 == nums_txt.length) {
     ai.add(int.parse(vrem));
     vrem = "";
   }
 }

 int min = ai.first;
 int min_index = 0;
 int otvet = 1;
 bool r = true;
 for(int i = 0; i<ai.length;i++){
     if(ai[i]<min){
       min = ai[i];
       min_index=i;
     }
 }
 for(int i = min_index +1;i<ai.length;i++){
     otvet *= ai[i];
     r = false;
 }
 if(r){
   print("Минимальное число последнее и после него цифр нету :(");
   } else{
     print(otvet);
   }
}

