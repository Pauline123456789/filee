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
    nums_txt +=" ";
  }
} catch (e) {
  print('Error: $e');
}
print(nums_txt);

}