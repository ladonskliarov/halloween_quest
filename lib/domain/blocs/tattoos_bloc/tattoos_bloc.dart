import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:halloween_yulia/data/randomizer/randomizer.dart';
import 'package:halloween_yulia/data/tattoos/body_tattoo_list.dart';

part 'tattoos_event.dart';
part 'tattoos_state.dart';

class TattoosBloc extends Bloc<TattoosEvent, TattoosState> {
  List<String> bodyTypeList = bodyCoupleList;
  List<String> tattooList = tattoos;
  String bodyPhoto = '';
  String tattooPhoto = '';
  Randomizer randomizer;


  TattoosBloc({required this.randomizer}) : super(TattooStateInitial()) {
    on<CoupleModeEvent>((event, emit){
      bodyTypeList = bodyCoupleList;
    });
    on<FriendsModeEvent>((event, emit){
      bodyTypeList = bodyFriendsList;
    });
    on<ConfirmGameModeEvent>((event, emit){
      emit(ConfirmedModeGameState(bodyList: bodyTypeList));
    });
  }
}
