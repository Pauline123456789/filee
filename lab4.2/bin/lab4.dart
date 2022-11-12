import 'dart:convert';
import 'dart:io';
import 'dart:async';
import 'dart:math';

void main() async {
  final file = File('numsTask2.txt');
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
  double out = 0;

  for (int i = 0; i < nums_txt.length; i++) {
    if (nums_txt[i] != ";") {
      vrem += nums_txt[i];
    }
    if (nums_txt[i] == ";" || i + 1 == nums_txt.length) {
      ai.add(double.parse(vrem));
      vrem = "";
    }
  }

  for (int i = 0; i < ai.length; i++) {
    if (ai[i] > 0.0) {
      out += ai[i];
    }
    if (ai[i] == 0.0) {
      i = ai.length;
    }
  }
  print(out);
}
