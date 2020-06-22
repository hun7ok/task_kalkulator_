import 'package:equatable/equatable.dart';


abstract class KalkulatorState extends Equatable {
  @override
  // TODO: implement props
  List<Object> get props => [];
}



class InitialCalculator extends KalkulatorState {
  final double result;

  InitialCalculator(this.result);  

   @override
  // TODO: implement props
  List<Object> get props => super.props..addAll([result]);


  
  
}


class Calculated extends KalkulatorState {

  final double result;

  Calculated(this.result);

  @override
  // TODO: implement props
  List<Object> get props => super.props..addAll([result]);
  
}


class CalculatorError extends KalkulatorState {
  final String message;

  CalculatorError(this.message);

  @override
  // TODO: implement props
  List<Object> get props => super.props..addAll([message]);
  
}

