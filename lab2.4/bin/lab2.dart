import 'dart:io';
import 'dart:math';
void main() {
List<List<int>> temp =List.generate(12, (i) => List.generate(30, (j) => Random().nextInt(50) + -20) );
List<double> aver_temp = avarage_temp(temp);

aver_temp.sort();
print(aver_temp);
}

List<double> avarage_temp(List<List<int>> temp){
List<double> aver_temp = [];
for(int i = 0; i<12;i++){
double num_temp = 0;
for(int j = 0; j<29;j++){
num_temp = num_temp + temp[i][j];
}
num_temp = num_temp/30;
aver_temp.add(num_temp.roundToDouble());
}
return(aver_temp);
}