import 'package:flutter/material.dart';
import 'package:halloween_yulia/data/data_text/templates.dart';
import 'package:halloween_yulia/presentation/victory_screen/victory_screen.dart';
import 'package:halloween_yulia/presentation/web_phone_optimizer/web_phone_optimizer.dart';

class MarshmallowScreen extends StatelessWidget {
  MarshmallowScreen({super.key});


  @override
  Widget build(BuildContext context){
    return WebPhoneOptimizer(
      child: DefaultTextStyle(
          style: const TextStyle(fontFamily: 'Old', fontSize: 16, color: Colors.black, fontWeight: FontWeight.w700,),
          child: Stack(
            children: [
              SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: Image.asset('assets/images/background_photos/marshmallow_background.jpg', fit: BoxFit.cover,),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                            width: double.infinity,
                            height: MediaQuery.of(context).size.height * 0.4,
                            child: Image.network('https://media.giphy.com/media/1AunKpz3cdCpy/giphy.gif?cid=ecf05e47u3habo1grbaklocy9stzjj75m9ht20ymptdva5rr&rid=giphy.gif&ct=g', fit: BoxFit.fill,)
                          ),
                      DecoratedBox(
                        decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50))),
                        child: SizedBox(
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height * 0.3,
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 20.0, top: 10.0, left: 10.0, right: 10.0),
                            child: SingleChildScrollView(
                                child: Text(zefirText)
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => VictoryScreen()));
                            },
                            child: const Text('Постукати', style: TextStyle(fontFamily: 'Old', fontSize: 25),)
                        ),
                      )
                    ],
                  ),
              ),
            ],
          )
      ),
    );
  }
}