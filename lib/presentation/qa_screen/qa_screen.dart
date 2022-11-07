import 'package:flutter/material.dart';
import 'package:halloween_yulia/data/ques_answ/ques_answ.dart';
import 'package:halloween_yulia/presentation/tattoo_screen/tattoo_screen.dart';
import 'package:halloween_yulia/presentation/web_phone_optimizer/web_phone_optimizer.dart';
import 'package:lottie/lottie.dart';

class QAScreen extends StatefulWidget {
  const QAScreen({super.key});

  @override
  State<QAScreen> createState() => _QAScreenState();
}

class _QAScreenState extends State<QAScreen> {
  final PageController _controller = PageController();
  int currentPage = 0;
  bool isComplete = false;
  int score = 0;

  @override
  dispose() {
    _controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext screenContext){
    return WebPhoneOptimizer(
      child: DefaultTextStyle(
          style: const TextStyle(fontFamily: 'Old', fontSize: 14, color: Colors.black, fontWeight: FontWeight.w700,),
          child: Stack(
            children: [
              SizedBox(
                height: MediaQuery.of(screenContext).size.height,
                width: MediaQuery.of(screenContext).size.width,
                child: Image.asset('assets/images/background_photos/qa_background.jpg', fit: BoxFit.fill,),
              ),
              SizedBox(
                height: MediaQuery.of(screenContext).size.height,
                width: MediaQuery.of(screenContext).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Lottie.network('https://assets9.lottiefiles.com/packages/lf20_dei76njr.json'),
                  ],
                ),
              ),
              PageView.builder(
                  controller: _controller,
                    pageSnapping: false,
                    itemCount: questions.length,
                    itemBuilder: (context, pageIndex){
                    return SizedBox(height: MediaQuery.of(screenContext).size.height,
                              width: MediaQuery.of(context).size.width,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 50.0),
                                  child: Column(
                                    children: [
                                      (questions.keys.elementAt(pageIndex).gif == null
                                          ? const SizedBox(height: 150,)
                                          : Padding(
                                            padding: const EdgeInsets.only(top: 50.0),
                                            child:  SizedBox(
                                              height: MediaQuery.of(screenContext).size.height * 0.3,
                                              width: MediaQuery.of(screenContext).size.width * 0.7,
                                              child: Image.network(questions.keys.elementAt(pageIndex).gif!, fit: BoxFit.contain,),
                                            )
                                          )
                                      ),
                                      const SizedBox(height: 10,),
                                      Container(
                                          padding: const EdgeInsets.all(12.0),
                                          decoration: BoxDecoration(
                                              border: Border.all(color: Colors.black),
                                              borderRadius: BorderRadius
                                                  .circular(30),
                                              color: Colors.white
                                          ),
                                          child: Text(
                                            questions.keys.elementAt(pageIndex).question,
                                            style: const TextStyle(fontSize: 15),
                                          ),
                                        ),
                                      const SizedBox(height: 20),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 25),
                                        child: SizedBox(
                                          height: MediaQuery.of(context).size.height * 0.4,
                                          width: MediaQuery.of(context).size.width,
                                          child: ListView.builder(
                                              itemCount: questions.values.elementAt(pageIndex).length,
                                              itemBuilder: (context, elementIndex) {
                                                return GestureDetector(
                                                  onTap: () {
                                                    isComplete = !isComplete;
                                                    setState(() {});
                                                    if(questions.values.elementAt(pageIndex)[elementIndex].color == Colors.green){
                                                      score += 1;
                                                      setState(() {});
                                                    }
                                                    if(questions.length - 1 != currentPage){
                                                    Future.delayed(const Duration(seconds: 1), () {
                                                      currentPage += 1;
                                                      isComplete = !isComplete;
                                                      _controller.jumpToPage(currentPage);
                                                      });
                                                    } else {
                                                      Future.delayed(const Duration(seconds: 1), () {
                                                        showDialog(context: context, builder: (context) =>
                                                            Dialog(
                                                              backgroundColor: Colors.transparent,
                                                              child: Material(
                                                                textStyle: const TextStyle(fontFamily: 'Old', fontSize: 14, color: Colors.black, fontWeight: FontWeight.w700,),
                                                                color: Colors.transparent,
                                                                child: Container(
                                                                  width: 300,
                                                                  height: 600,
                                                                  decoration: BoxDecoration(
                                                                      borderRadius: BorderRadius.circular(20),
                                                                      border: Border.all(color: Colors.black),
                                                                      color: Colors.orange,
                                                                  ),
                                                                  alignment: Alignment.center,
                                                                  child: Padding(
                                                                    padding: const EdgeInsets.all(30.0),
                                                                    child: SingleChildScrollView(
                                                                      child: Column(
                                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                                        children: [
                                                                          Text('Набрано балів $score/22', style: const TextStyle(fontSize: 18),),
                                                                          Padding(
                                                                            padding: const EdgeInsets.symmetric(vertical: 10.0),
                                                                            child: Image.network(result[score]?.gif ?? 'https://media.giphy.com/media/9BXyRYdiQzfvq/giphy.gif?cid=ecf05e472b8dpqjyh7d3kvrqp838o4pjc84hv6uywrl89d8n&rid=giphy.gif&ct=g')
                                                                          ),
                                                                          Text(result[score]?.text ?? 'Ви наче ангел Кастііл. Добрійшої душі люди.',
                                                                            textAlign: TextAlign.center,
                                                                            style: const TextStyle(fontSize: 18),),
                                                                          const Padding(
                                                                            padding: EdgeInsets.symmetric(vertical: 10.0),
                                                                            child: Text('Повторити знову', style: TextStyle(fontSize: 18),),
                                                                          ),
                                                                          IconButton(
                                                                              onPressed: () {
                                                                                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const QAScreen()), (route) => false);
                                                                                score = 0;
                                                                                setState(() {});
                                                                              },
                                                                              icon: const Icon(Icons.replay_circle_filled, color: Colors.black26, size: 50),
                                                                          ),
                                                                          Padding(
                                                                            padding: const EdgeInsets.symmetric(vertical: 20.0),
                                                                            child: GestureDetector(
                                                                              onTap: () {
                                                                                Navigator.push(context, MaterialPageRoute(builder: (context) => TattooScreen()));
                                                                              },
                                                                              child: Container(
                                                                                  decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(30), border: Border.all(color: Colors.black)),
                                                                                  child: const Padding(
                                                                                    padding: EdgeInsets.all(10.0),
                                                                                    child: Text('Далі до дворця', style: TextStyle(color: Colors.black, fontSize: 18),),
                                                                                  )
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            )
                                                        );
                                                      });
                                                    }
                                                  },
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                        color: isComplete == true ? questions.values.elementAt(pageIndex)[elementIndex].color : Colors.white,
                                                        borderRadius: BorderRadius.circular(20),
                                                        border: Border.all(color: Colors.black)
                                                    ),
                                                    margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                                                    padding: const EdgeInsets.all(15),
                                                    child: Text(questions.values.elementAt(pageIndex)[elementIndex].text),
                                                  ),
                                                );
                                              }
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                            );
                          }),
            ],
          )
      ),
    );
  }
}