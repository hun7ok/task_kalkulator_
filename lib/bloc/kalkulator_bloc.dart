import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterkalkulator/bloc/kalkulator_event.dart';
import 'package:flutterkalkulator/bloc/kalkulator_state.dart';


class KalkulatorBloc extends Bloc<KalkulatorEvent, KalkulatorState> {
  @override
  // TODO: implement initialState
  KalkulatorState get initialState => InitialCalculator(0);

  @override
  Stream<KalkulatorState> mapEventToState(KalkulatorEvent event) async* {
    // TODO: implement mapEventToState
    if(event is Tambah)
    {
      double angka1 = double.parse(event.input1);
      double angka2 = double.parse(event.input2);
      double hasil = angka1 + angka2;
      yield Calculated(hasil);
    }
  }
  
}
