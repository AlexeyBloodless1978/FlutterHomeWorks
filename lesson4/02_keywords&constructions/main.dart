import 'dart:io';
void main(){

  //part 1
  String? inputString;

 stdout.write('Введите число: ');
 inputString= stdin.readLineSync();

  double? parsedNumber = double.tryParse(inputString ?? '');

  if (parsedNumber != null) {
    if (parsedNumber >= 0) {
      print('Число $inputString положительное');
    } else {
      print('Число $inputString отрицательное');
    }
  } else {
    print('Вы ввели не число.');
  }

  //part 2
  for (int i=1;i<=10;i++){
    print('Число $i');
  }

  //part 3
  int day=2;
  switch (day) {
    case 1 : print ('Понедельник');
    case 2 : print ('Вторник');
    case 3 : print ('Среда');
    case 4 : print ('Четверг');
    case 5 : print ('Пятница');
    case 6 : print ('Суббота');
    case 7 : print ('Воскресенье');
    default  : print ('Неопредлено');
  }

}