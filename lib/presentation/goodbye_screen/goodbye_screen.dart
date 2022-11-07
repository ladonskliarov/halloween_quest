import 'package:flutter/material.dart';
import 'package:halloween_yulia/data/films_list/films_list.dart';
import 'package:halloween_yulia/presentation/web_phone_optimizer/web_phone_optimizer.dart';
import 'package:url_launcher/link.dart';

class FinalScreen extends StatelessWidget {
  FinalScreen({super.key});


  @override
  Widget build(BuildContext context){
    return WebPhoneOptimizer(
      child: DefaultTextStyle(
          style: const TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.w700,),
          child: Stack(
            children: [
              const DecoratedBox(
                decoration: BoxDecoration(color: Colors.black),
                child: SizedBox(
                  height: double.infinity,
                  width: double.infinity,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50.0, left: 15.0, right: 15.0),
                child: Column(
                  children: [
                    const Text('Developed by Ladon Skliarov'),
                    Expanded(
                      flex: 2,
                      child: SizedBox(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height * 0.25,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Image.asset('assets/images/privacy_photos/signature.png', fit: BoxFit.contain,),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 30.0, right: 30.0, bottom: 30.0),
                              child: Image.asset('assets/images/privacy_photos/qr_ladon.png', fit: BoxFit.contain, width: 100, height: 100,),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 20.0, bottom: 5.0),
                      child: Text('Обирайте нетипові фільми на продовження вечора:', textAlign: TextAlign.center,),
                    ),
                    Expanded(
                      flex: 5,
                      child: SizedBox(
                        child: ListView.builder(
                          itemCount: films.length,
                          itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 15.0),
                            child: Link(
                              target: LinkTarget.blank,
                              uri: Uri.parse(films[index].link),
                              builder: (context, followLink) => GestureDetector(
                                onTap: followLink,
                                child: SizedBox(
                                    width: double.infinity,
                                    height: MediaQuery.of(context).size.height * 0.25,
                                    child: Stack(
                                      children: [
                                        filmBackground(context, films[index].banner),
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            DecoratedBox(
                                                decoration: BoxDecoration(
                                                    color: Colors.black.withOpacity(0.5),
                                                    borderRadius: const BorderRadius.only(bottomRight: Radius.circular(30), bottomLeft: Radius.circular(30))
                                                ),
                                              child: SizedBox(
                                                width: double.infinity,
                                                height: MediaQuery.of(context).size.height * 0.08,
                                              ),
                                            )
                                          ],
                                        ),
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.all(20.0),
                                              child: Text(films[index].title, style: const TextStyle(fontSize: 25),),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                              ),
                            ),
                          );
                        }),
                      ),
                    )
                  ],
                ),
              )
            ],
        )
      ),
    );
  }
}

Widget filmBackground (BuildContext context, String image){
  return Container(
    width: double.infinity,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: Colors.blueAccent ),
    child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Image.asset(image, fit: BoxFit.cover,),
    ),
  );
}