import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:halloween_yulia/domain/blocs/sound_bloc/sound_bloc.dart';
import 'package:halloween_yulia/presentation/history_screen/history_screen.dart';
import 'package:halloween_yulia/presentation/web_phone_optimizer/web_phone_optimizer.dart';
import 'package:lottie/lottie.dart';

class WelcomeScreen extends StatefulWidget {
  WelcomeScreen({super.key});


  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> with SingleTickerProviderStateMixin{
  Color textColor = Colors.black;
  Color backColor = Colors.orange;
  late AnimationController _controller;


  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return WebPhoneOptimizer(
      child: DefaultTextStyle(
        style: const TextStyle(),
        child: SingleChildScrollView(
          child: Stack(
              children: [
                SizedBox(
                  height: size
                      .height,
                  width: size
                      .width,
                  child: Image.asset(
                    'assets/images/background_photos/welcome_background.jpg', fit: BoxFit.fill,),
                ),
                SizedBox(
                  height: size
                      .height,
                  width: size
                      .width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(height: 20),
                      Expanded(
                        flex: 5,
                        child: Container(
                          child: Lottie.network(
                              'https://assets9.lottiefiles.com/packages/lf20_zanwzjcy.json'),
                        ),
                      ),
                      Expanded(
                          flex: 4,
                          child: Text(
                            'Будинок\nГомеза Лопеза', textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.black,
                                fontFamily: 'Rubik',
                                fontSize: size.height * 0.04 + 5),)),
                      Expanded(
                          flex: 3,
                          child: Text('чи ти готовий стати\nучасником історії?',
                            style: TextStyle(fontFamily: 'Rubik',
                                fontSize: size.height * 0.03 + 5,
                                color: Colors.green),)),
                      SizedBox(
                        height: 50,
                        child: Material(
                          color: Colors.transparent,
                          child: IconButton(onPressed: () {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) =>
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Dialog(
                                        backgroundColor: Colors.white.withOpacity(
                                            0.6),
                                        child: SizedBox(
                                          height: MediaQuery
                                              .of(context)
                                              .size
                                              .height * 0.3,
                                          width: double.infinity,
                                          child: DefaultTextStyle(
                                            style: const TextStyle(
                                                fontFamily: 'Old',
                                                fontSize: 20,
                                                color: Colors.black),
                                            child: ListView(
                                              children: const [
                                                SizedBox(height: 20,),
                                                Text('Вам знадобиться у квесті:',
                                                  textAlign: TextAlign.center,),
                                                SizedBox(height: 20,),
                                                Text('Упаковка листкового тіста',
                                                  textAlign: TextAlign.center,),
                                                Text('Упаковка маршмеллоу',
                                                  textAlign: TextAlign.center,),
                                                Text('Сосиски 8+ шт',
                                                  textAlign: TextAlign.center,),
                                                Text('Свічка',
                                                  textAlign: TextAlign.center,),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                            );
                          },
                              icon: const Icon(
                                Icons.question_mark_rounded, color: Colors.white,
                                size: 30,)),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: GestureDetector(
                          onTap: () async {
                            setState(() {
                              textColor =
                              textColor == Colors.black ? Colors.orange : Colors
                                  .black;
                              backColor =
                              backColor == Colors.orange ? Colors.black : Colors
                                  .orange;
                            });
                            if (_controller.isCompleted) {
                              _controller.reset();
                            }
                            _controller.forward();
                            BlocProvider.of<SoundBloc>(context).add(
                                ThemeOneEvent());
                            Future.delayed(Duration(seconds: 1), () {
                              showDialog(context: context,
                                  barrierColor: Colors.transparent,
                                  builder: (BuildContext context) =>
                                      Lottie.network(
                                          'https://assets2.lottiefiles.com/packages/lf20_v0u9sdxl.json',
                                          fit: BoxFit.fill, repeat: false)
                              );
                            });
                            Future.delayed(Duration(seconds: 3), () {
                              Navigator.pop(context);
                            });
                            Future.delayed(Duration(seconds: 3), () {
                              Navigator.pushAndRemoveUntil(context,
                                  MaterialPageRoute(
                                    builder: (context) => HistoryScreen(),), (
                                      route) => false);
                            });
                          },
                          child: Container(
                              decoration: BoxDecoration(
                                  color: backColor,
                                  borderRadius: BorderRadius.circular(10)),
                              height: 40,
                              width: MediaQuery
                                  .of(context)
                                  .size
                                  .height * 0.25 + 5,
                              alignment: Alignment.center,
                              child: Text(
                                'Поринутись',
                                style: TextStyle(
                                    color: textColor,
                                    fontSize: MediaQuery
                                        .of(context)
                                        .size
                                        .height * 0.02 + 5,
                                    fontFamily: 'Old'),
                              )
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 10,
                        child: Container(
                          child: Lottie.network(
                            'https://assets9.lottiefiles.com/packages/lf20_zazxqo.json',
                            repeat: false,
                            controller: _controller,
                            onLoaded: (composition) {
                              _controller
                                ..duration = composition.duration;
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      )
                    ],
                  ),
                ),
              ]
          ),
        ),
      ),
    );
  }
}
