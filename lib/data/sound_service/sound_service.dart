import 'package:audioplayers/audioplayers.dart';

class SoundService {
  playTheme1() {}
  playLaugh() {}
}

class SoundServiceImplementation implements SoundService {
  final audioPlayer = AudioPlayer();

  @override
  playLaugh() {
    audioPlayer.play(AssetSource('sound/laugh.wav'));
  }

  @override
  playTheme1() {
    audioPlayer.play(AssetSource('sound/theme_1.wav'));
  }
}