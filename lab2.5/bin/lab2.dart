import 'dart:convert';
import 'dart:io';
import 'dart:math';

void main() {
Map temperature = {
"Январь": List.generate((30), (j) => Random().nextInt(20) - 30),
"Февраль": List.generate((30), (j) => Random().nextInt(20) - 25),
"Март": List.generate((30), (j) => Random().nextInt(20) - 20),
"Апрель": List.generate((30), (j) => Random().nextInt(20) - 15),
"Май": List.generate((30), (j) => Random().nextInt(20) - 5),
"Июнь": List.generate((30), (j) => Random().nextInt(20) + 10),
"Июль": List.generate((30), (j) => Random().nextInt(20) + 15),
"Август": List.generate((30), (j) => Random().nextInt(20) + 10),
"Сентябрь": List.generate((30), (j) => Random().nextInt(15)),
"Октябрь": List.generate((30), (j) => Random().nextInt(20) - 15),
"Ноябрь": List.generate((30), (j) => Random().nextInt(20) - 20),
"Декабрь": List.generate((30), (j) => Random().nextInt(20) - 30),
};
Map<String, int> sr_temp = sred(temperature);
print(sr_temp);
}

Map<String, int> sred(temperature) {
Map<String, int> sr_temp = {
"Январь": 0,
"Февраль": 0,
"Март": 0,
"Апрель": 0,
"Май": 0,
"Июнь": 0,
"Июль": 0,
"Август": 0,
"Сентябрь": 0,
"Октябрь": 0,
"Ноябрь": 0,
"Декабрь": 0,
};
for (String key in temperature.keys) {
double sum = 0;
for (int i = 0; i < 30; i++) {
sum += temperature[key][i];
}
sr_temp[key] = (sum ~/ 30);
}

return sr_temp;
}