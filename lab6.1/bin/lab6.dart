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
List<String> ai = [];
String vrem = "";
for (int i = 0; i < nums_txt.length; i++) {
  if (nums_txt[i] != " ") {
    vrem += nums_txt[i];
  }
  if (nums_txt[i] == " " || i + 1 == nums_txt.length) {
    ai.add(vrem);
    vrem = "";
  }
}
for(int i = 0;i<ai.length;i++){
 String a = ai[i];
 bool bub = false;
 for(int j = 0; j<a.length;j++){
   bub = !bub;
 }
 if(bub){
   print(a);
 }
}
}
