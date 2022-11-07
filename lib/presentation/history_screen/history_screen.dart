import 'package:flutter/material.dart';
import 'package:halloween_yulia/data/data_text/templates.dart';
import 'package:halloween_yulia/presentation/cards_crocodile_screen/cards_crocodile_screen.dart';
import 'package:halloween_yulia/presentation/web_phone_optimizer/web_phone_optimizer.dart';
import 'package:lottie/lottie.dart';

class HistoryScreen extends StatefulWidget {
  HistoryScreen({super.key});


  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {


  @override
  Widget build(BuildContext context){
    return WebPhoneOptimizer(
      child: DefaultTextStyle(
        style: const TextStyle(fontFamily: 'Old', color: Colors.black),
        child: Stack(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height,
                width:  MediaQuery.of(context).size.width,
                child: Image.asset('assets/images/background_photos/history_background.jpg', fit: BoxFit.fill,),
              ),
              Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(
                          flex: 3,
                          child: Lottie.network('https://assets9.lottiefiles.com/packages/lf20_4fgslMc0Si.json')
                      ),
                      Expanded(
                          flex: 7,
                          child: SizedBox()
                      )
                    ],
                  )
              ),
              Center(
                  child: Column(
                    children: [
                      Expanded(
                        flex: 2,
                        child: SizedBox(
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: Container(
                          width: double.infinity,
                          decoration: const BoxDecoration(color: Colors.amberAccent),
                          margin: const EdgeInsets.all(8.0),
                          child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Text(historyPart1,
                                      style: TextStyle(fontSize: MediaQuery.of(context).size.height * 0.02, fontWeight: FontWeight.w700), softWrap: true,),
                                    SizedBox(
                                        child: Image.asset('assets/images/history_photos/history_house.jpg', fit: BoxFit.contain,)
                                    ),
                                    Text(historyPart12,
                                      style: TextStyle(fontSize: MediaQuery.of(context).size.height * 0.02, fontWeight: FontWeight.w700), softWrap: true,),
                                    SizedBox(
                                        child: Image.asset('assets/images/history_photos/history_homez.jpeg', fit: BoxFit.contain,)
                                    ),
                                    Text(historyPart2,
                                      style: TextStyle(fontSize: MediaQuery.of(context).size.height * 0.02, fontWeight: FontWeight.w700), softWrap: true,),
                                    SizedBox(
                                        child: Image.asset('assets/images/history_photos/history_circus.jpg', fit: BoxFit.cover,)
                                    ),
                                    Text(historyPart3,
                                      style: TextStyle(fontSize: MediaQuery.of(context).size.height * 0.02, fontWeight: FontWeight.w700), softWrap: true,),
                                    SizedBox(
                                        child: Image.asset('assets/images/history_photos/history_charles.jpeg', fit: BoxFit.cover,)
                                    ),
                                    Text(historyPart4,
                                      style: TextStyle(fontSize: MediaQuery.of(context).size.height * 0.02, fontWeight: FontWeight.w700), softWrap: true,),
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (context) => CardsCrocodileScreen()));
                                      },
                                      child: Text(
                                        'Уперед',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'Old',
                                          fontWeight: FontWeight.w700,
                                          fontSize: MediaQuery.of(context).size.width * 0.04,
                                        ),
                                      ), style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),)
                                  ],
                                ),
                              )),
                        ),
                      )
                    ],
                  )
              ),
            ]
        ),
      ),
    );
  }
}