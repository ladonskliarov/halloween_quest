import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:halloween_yulia/data/sound_service/sound_service.dart';

part 'sound_event.dart';
part 'sound_state.dart';

class SoundBloc extends Bloc<SoundEvent, SoundState> {
  SoundService soundManager;

  SoundBloc({required this.soundManager}) : super(SoundInitial()) {
    on<ThemeOneEvent>((event, emit) {
      soundManager.playTheme1();
    });
    on<LaughEvent>((event, emit) {
      soundManager.playLaugh();
    });
  }
}
