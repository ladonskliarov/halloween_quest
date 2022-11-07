import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:halloween_yulia/data/sound_service/sound_service.dart';
import 'package:halloween_yulia/domain/blocs/sound_bloc/sound_bloc.dart';
import 'package:halloween_yulia/presentation/welcome_screen/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Scary Halloween',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RepositoryProvider(
        create: (context) => SoundServiceImplementation(),
          child: BlocProvider(
            lazy: false,
            create: (context) => SoundBloc(soundManager: RepositoryProvider.of<SoundServiceImplementation>(context)),//..add(ThemeOneEvent()),
            child: WelcomeScreen(),
            ),
        )
    );
  }
}

