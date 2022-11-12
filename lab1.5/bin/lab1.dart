import 'dart:io';
import 'dart:math';
void main() {
String words = stdin.readLineSync()!;
int words_num = 1;
for(int i = 0;i<words.length;i++){
if(words[i]==" "){
words_num++;
}
}
String words_2 = "start " + words + " end";
print(words_num);
print(words_2);

}
