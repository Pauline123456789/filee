import 'dart:convert';
import 'dart:io';
import 'dart:async';
import 'dart:math';

List<int> transforming(String bub_0) {
  List<int> a = [];
  String bub = "";
  bool m = true;

  for (int i = 0; i < bub_0.length; i++) {
    while (bub_0[i] != " " && m) {
      bub += bub_0[i];
      if (i < bub_0.length - 1) {
        i++;
      } else {
        m = false;
      }
    }
    a.add(int.parse(bub));
    bub = "";
  }
  return (a);
}

void main() async {
  final file = File("input.txt");
  var output = File('output.txt');
  Stream<String> lines = file
      .openRead()
      .transform(utf8.decoder) // Decode bytes to UTF-8.
      .transform(LineSplitter()); // Convert stream to individual lines.
  List<String> ai = [];
  await for (var line in lines) {
    ai.add(line);
  }
  List<int> winning_numbers = transforming(ai[0]);
  List<int> numbers_tickets = transforming(ai[1]);
  var sink = output.openWrite();
  for (int i = 0; i < numbers_tickets[0]; i++) {
    List<int> ticket = transforming(ai[i + 2]);
    int num = 0;
    for (int n = 0; n < winning_numbers.length; n++) {
      for (int m = 0; m < ticket.length; m++) {
        if (ticket[m] == winning_numbers[n]) {
          num++;
        }
      }
    }
   
    if (num >= 3) {
      sink.write('Lucky\n');
    } else sink.write('Unlucky\n');
   
  }
  sink.close();
}
