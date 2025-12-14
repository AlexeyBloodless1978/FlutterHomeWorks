import 'dart:async';

class Counter {

  int _count = 0;

  final StreamController<int> _controller = StreamController<int>.broadcast();


  void increment() {
    _count++;
    _controller.add(_count);
  }


  void decrement() {
    _count--;
    if (_count < 0) {
      _controller.addError('Ошибка: счетчик не может быть отрицательным! Текущее значение: $_count');
      return;
    }
    _controller.add(_count);
  }

  int get currentValue => _count;

  Stream<int> get stream => _controller.stream;

  void dispose() {
    _controller.close();
  }
}

void main(){
  final counter=Counter();

  final subscribe = counter.stream.listen(
      (value) {
        print('Значение счетчика: $value');
      },
    onError: (error) {
        print('Ошибка $error');
        print('Поток завершил работу аварийно');
    }, onDone: () {
    print('Поток завершил работу нормально');
  },
  );

  counter.increment();
  counter.decrement();
  counter.increment();
  counter.increment();
  counter.decrement();
  counter.decrement();
 // counter.decrement();

  Future.delayed(Duration(milliseconds: 100), () {
   // subscribe.cancel();
    counter.dispose();
  });
  
  Future.delayed(Duration(milliseconds: 100), () {
     subscribe.cancel();
    //counter.dispose();
  });

}