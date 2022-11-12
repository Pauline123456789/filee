import 'dart:convert';
import 'dart:io';
import 'dart:async';
import 'dart:math';
void sr_arifm(int a,int b,List<int> ai){
double arifm = 0;
int arifm_nums = 0;
for(int i = a+1;i<b;i++){
arifm += ai[i];
arifm_nums++;
}
arifm = arifm/arifm_nums;
print(arifm);

}
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
int max = ai.first;
int min = ai.first;
int max_index = 0;
int min_index = 0;
bool r = true;
for(int i = 0; i<ai.length;i++){ //поиск минимального элемента и его индекса
    if(ai[i]>max){
      max = ai[i];
      max_index = i;
    }
    if(ai[i]<min){
      min = ai[i];
      min_index = i;
    }
}
print("min = $min  max - $max");
if(min_index<max_index){
 sr_arifm(min_index, max_index, ai);
} else {sr_arifm(max_index, min_index, ai);}
}
