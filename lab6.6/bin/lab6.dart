import 'dart:convert';
import 'dart:io';
import 'dart:async';
import 'dart:math';
void main(){
List<double> a = [1.5,6.3,-2.5,0,-0.2,4.1];
List<double> b = [];
List<double> c = [];

for(int i = 0 ; i<a.length;i++){
 if(a[i]>=0){
   b.add(a[i]);
 } else{c.add(a[i]);}
}

print(b);
print(c);
}
