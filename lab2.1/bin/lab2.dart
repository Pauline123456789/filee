import 'dart:io';
import 'dart:math';
void main() {
List<int> list = [100];
for(int i = 0; i<99;i++){
list.add(list[i] - 3);
}
print(list);
}
