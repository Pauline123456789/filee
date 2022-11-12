import 'dart:io';
import 'dart:math';
void main() {
List<int> list =[];
for(int i = 0; i<100;i++){
if(i%2!=0){
list.add(i);
}
}
print(list);
}