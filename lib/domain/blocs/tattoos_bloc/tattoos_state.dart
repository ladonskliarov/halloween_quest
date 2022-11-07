part of 'tattoos_bloc.dart';

abstract class TattoosState extends Equatable {
  const TattoosState();
}

class TattooStateInitial extends TattoosState {
  int values = 1;

  @override
  List<Object> get props => [values];
}

class ConfirmedModeGameState extends TattoosState {
  List<String> bodyList = bodyCoupleList;
  List<String> tattooList = tattoos;
  String bodyChoice = 'assets/images/body_photos/leg.png';
  String tattooChoice = 'assets/images/tattoo_photos/tattoo_1.png';

  ConfirmedModeGameState({required this.bodyList});

  @override
  List<Object> get props => [bodyList, bodyChoice, tattooChoice, tattooList];
}
