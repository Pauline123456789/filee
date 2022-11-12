import 'dart:io';
import 'dart:math';
void main() {
int n = int.parse(stdin.readLineSync()!);
List<List<int>> list =List.generate(n, (i) => List.generate(n, (j) => 1) );

for(int i = 1; i < n;i++){
for(int j = 1;j < n;j++){
list[i][j] = list[i-1][j] + list[i][j-1];
}
}
print(list);

}