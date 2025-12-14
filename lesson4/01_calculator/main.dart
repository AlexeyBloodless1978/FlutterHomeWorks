
import 'dart:io';
void main(){
  String? inputString;
  print('Простой калькулятор');
  print('Введите выражение вида 5+7 и нажмите вводд для получения результата');
  print('Калькултяор поддержитвает операции +,-,*,/ и =');
  print('где =  сравнить два числа');
  print('Для выхода введите Exit');

    inputString = stdin.readLineSync();


  while (inputString != 'Exit'){
     if (inputString != null){
       print ('Ответ:' +  calcSimple(inputString));
     }

    inputString = stdin.readLineSync();
  }
}

String calcSimple(String expression) {
  final pattern = RegExp(r'(\d+)\s*([+\-*/=])\s*(\d+)');
  final match = pattern.firstMatch(expression);

  if (match != null) {
    final num a = num.parse(match[1]!);
    final String operator = match[2]!;
    final num b = num.parse(match[3]!);

    final calc=Calculator();

    switch (operator) {
      case '+':
        return calc.add(a, b).toString();
      case '-':
        return calc.sub(a, b).toString();
      case '*':
        return calc.mul(a, b).toString();
      case '/':
        if (b == 0) {
          return 'Ошибка: Деление на ноль!';
        }
        return calc.div(a, b).toString();
      case '=':
        return calc.compare(a, b);
      default:  return 'Неизвестная операция';
    }
  } else   {
    return 'Неверный формат выражения';
  }
}

class Calculator  {
    num add(num a, num b){
      return a+b;
  }
  num sub(num a, num b){
  return a-b;
  }
  num mul(num a, num b){
  return a*b;
  }
  num div(num a, num b){
  return a/b;
  }
    String compare (num a, num b){
      if (a>b) {
        return '$a больше $b';
      }
      if (a<b) {
        return '$a меньше $b';
      }
      return '$a равно $b';
    }
}