import 'dart:convert';
import 'dart:io';
import 'dart:async';
import 'dart:math';
void out(List<List<int>> a,int n,int m){

for(int i = 0;i<n;i++){ 
 for(int j = 0;j<m;j++){
   stdout.write("${a[i][j]} ");
 }
 print("\n");
}
}
void main(){
 int n = 5;
 int m = 5;
List<List<int>> a = List.generate(n, (index) => List.generate(m,(index) => Random().nextInt(2),growable: true ));

out(a, n, m); // вывод изначальной матрицы

for(int i = 0;i<n;i++){  //добавление нового слолбца с заполнением
 bool tern = false;
 for(int j = 0;j<m;j++){
  
   if(a[i][j]==1){
     tern = !tern;
   }
   if(j+1==m){
     if(tern){
       a[i].add(1);
     } else{a[i].add(0);}
   }
 }
}
print("\n");
out(a, n, m+1); //вывод получившийся матрицы
}
