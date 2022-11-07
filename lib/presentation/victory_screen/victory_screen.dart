import 'package:flutter/material.dart';
import 'package:halloween_yulia/presentation/goodbye_screen/goodbye_screen.dart';
import 'package:halloween_yulia/presentation/web_phone_optimizer/web_phone_optimizer.dart';
import 'package:lottie/lottie.dart';

class VictoryScreen extends StatelessWidget {
  VictoryScreen({super.key});


  @override
  Widget build(BuildContext context){
    return WebPhoneOptimizer(
      child: DefaultTextStyle(
          style: TextStyle(fontFamily: 'Old', fontSize: 16, color: Colors.black, fontWeight: FontWeight.w700,),
          child: Stack(
            children: [
              SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: Image.asset('assets/images/background_photos/victory_background.jpg', fit: BoxFit.cover,),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 50.0),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                          flex: 1,
                          child: Container(
                            alignment: Alignment.bottomCenter,
                            child: const Text('Домівка Чарльза', style: TextStyle(fontSize: 30, fontFamily: 'Rubik', color: Colors.white),
                            ),
                          ),
                        ),
                      Expanded(
                          flex: 3,
                          child: Container(
                            decoration: BoxDecoration(color: Colors.black.withOpacity(0.5), borderRadius: BorderRadius.circular(30)),
                            margin: const EdgeInsets.only(top: 20.0),
                            padding: const EdgeInsets.all(12.0),
                            alignment: Alignment.topLeft,
                            child: const SingleChildScrollView(
                              child: Text('Гомез побачив цей треш, взяв свою родину та кинувся у бігство! Чальз дякує що ви допомогли йому здобути справедливості. У наш час її не багато, але навіть у самі страшні часи ми повинні робити все можливе щоб її здобувати. Бо хто, як не ти.', style: TextStyle(color: Colors.white),
                              ),
                            ),
                          )
                      ),
                      Expanded(
                        flex: 8,
                        child: SizedBox(
                          child: Lottie.network('https://assets9.lottiefiles.com/packages/lf20_4fgslMc0Si.json'),
                        ),
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => FinalScreen()));
                          },
                          child: const Text('Закінчити', style: TextStyle(fontSize: 25, fontFamily: 'Old'),)
                      )
                    ],
                  ),
                ),
              ),
            ],
          )
      ),
    );
  }
}