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

 List<double> ai = [];
 String vrem = "";
 for (int i = 0; i < nums_txt.length; i++) { //преобразование из строки в массив
   if (nums_txt[i] != ";") {
     vrem += nums_txt[i];
   }
   if (nums_txt[i] == ";" || i + 1 == nums_txt.length) {
     ai.add(double.parse(vrem));
     vrem = "";
   }
 }

 for(int j = 0;j<ai.length;j++){ //сортировка
   for(int i = 0;i<ai.length-1;i++){
     if(ai[i]>ai[i+1]){
       double vrem = ai[i];
       ai[i]=ai[i+1];
       ai[i+1]=vrem;
     }
   }
 }

 nums_txt = "";
 for(int i = 0;i<ai.length;i++){ //преобразование в строку и расстановка ;
   nums_txt += ai[i].toString();
   nums_txt+=";";
 }

  var sink = file.openWrite(); //запись в файл
  sink.write(nums_txt);
  sink.close();
}
