import 'package:flutter/material.dart';
import 'package:halloween_yulia/data/cards_crocodile/cards_list.dart';
import 'package:halloween_yulia/presentation/qa_screen/qa_screen.dart';
import 'package:halloween_yulia/presentation/web_phone_optimizer/web_phone_optimizer.dart';

class CardsCrocodileScreen extends StatelessWidget {
  CardsCrocodileScreen({super.key});


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
                child: Image.asset('assets/images/background_photos/crocodile_background.jpg', fit: BoxFit.cover,),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 50.0),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20.0),
                            child: Text('Вам треба знайти правильну дорогу до Хеллоуінсвіля', style: TextStyle(fontFamily: 'Rubik', fontSize: 20, color: Colors.white), softWrap: true, textAlign: TextAlign.center,),
                        )
                      ),
                      Expanded(
                          flex: 3,
                          child: Container(
                              decoration: BoxDecoration(color: Colors.black.withOpacity(0.5), borderRadius: BorderRadius.circular(30)),
                              margin: const EdgeInsets.only(top: 20.0),
                              padding: const EdgeInsets.all(12.0),
                              alignment: Alignment.topLeft,
                              child: const SingleChildScrollView(
                                child: Text("Тому по черзі, натискаючи по картці, стирайте слово і намагайтесь пояснити іншим учасникам гри, це слово тільки жестами. Коли закінчите слова, натискайте на кнопку, кнопка з'явиться.", style: TextStyle(color: Colors.white, fontFamily: 'Old'),
                                ),
                            ),
                          )
                      ),
                      Expanded(
                        flex: 7,
                            child: SizedBox(
                              child: ListView.builder(
                                itemCount: widgetCards.length,
                                itemExtent: 250,
                                  itemBuilder: (context, index) =>
                                          widgetCards[index]
                                )
                              ),
                            ),
                    ]
                  )
                ),
              ),
            ],
          )
      ),
    );
  }
}

Widget TextCharles() =>  Padding(
  padding: const EdgeInsets.all(15.0),
  child: Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(color: Colors.white.withOpacity(0.5), borderRadius: BorderRadius.circular(20)),
      child: Text('Ви знайшли Чарльза та Хеллоуінсвіль. Тепер треба відповисти на декілька його запитань щоб він переконався що ви свої.', style: TextStyle(fontSize: 20, color: Colors.black, fontFamily: 'Old'), textAlign: TextAlign.center,)),
);

class NextButton extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(90.0),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(primary: Colors.orange),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => QAScreen()));
          },
          child: Text('Поїхали', style: TextStyle(fontSize: 22, fontFamily: 'Old', color: Colors.black, fontWeight: FontWeight.w700),)
      ),
    );
  }
}

class WidgetCard extends StatefulWidget {
  WidgetCard({required this.word});
  String word;

  @override
  State<WidgetCard> createState() => _WidgetCardState();
}

class _WidgetCardState extends State<WidgetCard> {
  bool showWord = false;

  @override
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: () {
        showWord = !showWord;
        setState(() {});
      },
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
        width: double.infinity,
        decoration: BoxDecoration(
            color: (showWord != false) ? Colors.orange : Colors.black,
            borderRadius: BorderRadius.circular(20)
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Натисни', style: TextStyle(color: Colors.orange, fontFamily: 'Rubik', fontSize: 35)),
              Text('(тут слово)', style: const TextStyle(fontFamily: 'Old', color: Colors.orange, fontSize: 20)),
              Text(widget.word, style: const TextStyle(fontFamily: 'Old', fontSize: 25),
              ),
            ],
          ),
        ),
      ),
    );
  }
}