part of 'tattoos_bloc.dart';

abstract class TattoosEvent extends Equatable {
  const TattoosEvent();
}

class CoupleModeEvent extends TattoosEvent {
  @override
  List<Object?> get props => [];
}

class FriendsModeEvent extends TattoosEvent {
  @override
  List<Object?> get props => [];
}

class ConfirmGameModeEvent extends TattoosEvent {
  final List<String> bodyListName;

  ConfirmGameModeEvent({required this.bodyListName});

  @override
  List<Object?> get props => [bodyListName];
}


