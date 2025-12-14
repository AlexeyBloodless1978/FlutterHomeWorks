void main(){
  List<int?> list=[1,null,0,5,null];
  print ('Исходный список $list');


  for (int i=0;i<list.length;i++){
    list[i]??=0;
    }
  print ('Преобразованный список $list');

}