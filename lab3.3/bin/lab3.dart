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

  List<int> height = [];
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
    height.add(int.parse(bub));
    bub = "";
  }

  int volume = 0;
  for (int n = 0; n < height.length; n++) {
    for (int m = height.length - 1; m > 0; m--) {
      int dlina = m - n;
      int visot = height[n] >= height[m] ? height[m] : height[n];
      volume = visot * dlina > volume ? volume = visot * dlina : volume;
    }
  }
  print(volume);
}

