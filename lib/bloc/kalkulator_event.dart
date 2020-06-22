abstract class KalkulatorEvent {}

class Tambah extends KalkulatorEvent {
  final String input1;
  final String input2;

  Tambah(this.input1, this.input2);
}