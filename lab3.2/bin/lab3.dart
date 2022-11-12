import 'dart:convert';
import 'dart:io';
import 'dart:async';
import 'dart:math';

void main() async {
  final file = File('file.txt');
  String nums = "";
  Stream<String> lines = file
      .openRead()
      .transform(utf8.decoder) // Decode bytes to UTF-8.
      .transform(LineSplitter()); // Convert stream to individual lines.
  try {
    await for (var line in lines) {
      nums += line;
    }
  } catch (e) {
    print('Error: $e');
  }

  String a = "";
  String bub = "";
  bool m = true;

  for (int i = 0; i < nums.length; i++) {
    while (nums[i] != " " && m) {
      bub += nums[i];
      if (i < nums.length - 1) {
        i++;
      } else {
        m = false;
      }
    }
    if(int.parse(bub)%2==1){
      a+=bub;
      a+= " ";
    }
 
    bub = "";
  }
 
  var sink = file.openWrite();
  sink.write(a);
  sink.close();

}
