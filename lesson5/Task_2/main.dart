Future<String> fetchData() async {
  await Future.delayed(Duration(seconds: 2));
  return 'Данные загружены';
}

Stream <int>  generateTenNumbers() async* {
  for (int i=1;i<=10;i++){
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}

void main() async {
  print ('Начало загрузки');
  fetchData().then((result) => print(result));
  print ('Конец загрузки');

  var numbers = generateTenNumbers();

  await for (var number in numbers) {
    print(number);
  }
}

