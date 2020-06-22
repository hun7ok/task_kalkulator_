import 'dart:async';

class CounterBloc {
  int  hasil = 0;

  StreamController<int> _CounterController = StreamController();
  Stream<int> get counter => _CounterController.stream;

  void hitung(int text1, int text2, String tanda) {
   

    switch (tanda) {
      case "+":
        {
           hasil = text1 + text2;
        }
        break;

      case "-":
        {
          hasil = text1 - text2;
        }
        break;

      case "X":
        {
          hasil = text1 * text2;
        }
        break;

  

      default:
        {
          hasil = text1 ~/ text2;
        }
        break;
    }

    _CounterController.sink.add(hasil);
  }
}

final BlockData = CounterBloc();
