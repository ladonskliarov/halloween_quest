import 'package:flutter/material.dart';
import 'package:halloween_yulia/data/data_text/templates.dart';
import 'package:halloween_yulia/presentation/marshmallow_screen/marshmallow_screen.dart';
import 'package:halloween_yulia/presentation/web_phone_optimizer/web_phone_optimizer.dart';

class SosagesScreen extends StatelessWidget {
  SosagesScreen({super.key});


  @override
  Widget build(BuildContext context){
    return WebPhoneOptimizer(
      child: DefaultTextStyle(
          style: const TextStyle(color: Colors.black, fontFamily: 'Old', fontWeight: FontWeight.w700, fontSize: 16),
          child: Stack(
            children: [
              SizedBox(
                height: double.infinity,
                width: double.infinity,
                child: Image.asset('assets/images/background_photos/sosages_background.jpg', fit: BoxFit.cover,),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: SizedBox(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.3,
                          child: Image.asset('assets/images/sosages_photo/sosages.jpg', fit: BoxFit.cover,)
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: DecoratedBox(
                      decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50))),
                      child: SizedBox(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height * 0.3,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 20.0, top: 10.0, left: 10.0, right: 10.0),
                          child: SingleChildScrollView(
                              child: Text(sosagesText)
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                      flex: 2,
                      child: SizedBox(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => MarshmallowScreen()));
                                },
                              style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
                                child: const Text('Зробили', style: TextStyle(fontSize: 25, fontFamily: 'Old'),
                              ),
                            ),
                          ],
                        ),
                      )
                  ),
                ],
              )
            ],
          )
      ),
    );
  }
}