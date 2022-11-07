import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:halloween_yulia/domain/blocs/tattoos_bloc/tattoos_bloc.dart';
import 'package:lottie/lottie.dart';

class TattooRandom extends StatefulWidget {
  TattooRandom({required this.state});
  ConfirmedModeGameState state;

  @override
  State<TattooRandom> createState() => _TattooRandomState();
}

class _TattooRandomState extends State<TattooRandom> {
  @override
  Widget build(BuildContext context){
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
                  onPressed: () {
                    showDialog(context: context,
                        barrierColor: Colors.black,
                        builder: (BuildContext context) =>
                            Lottie.network('https://assets9.lottiefiles.com/packages/lf20_prrschcy.json',
                                fit: BoxFit.scaleDown, repeat: true)
                    );
                    Future.delayed(const Duration(milliseconds: 1500), () {Navigator.pop(context);});
                    Future.delayed(const Duration(seconds: 1), () {
                      widget.state.bodyChoice = BlocProvider.of<TattoosBloc>(context).randomizer.randomBodyChoice(widget.state.bodyList);
                      widget.state.tattooChoice = BlocProvider.of<TattoosBloc>(context).randomizer.randomTattooChoice(widget.state.tattooList);
                      setState(() {});
                    });
                  },
                  child: const Text('Конфети або життя', style: TextStyle(color: Colors.black, fontFamily: 'Rubik', fontSize: 25),)
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                height: 300,
                width: 300,
                child: Image.asset(widget.state.bodyChoice, fit: BoxFit.scaleDown,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                child: SizedBox(
                  height: 200,
                  width: 200,
                  child: Image.asset(widget.state.tattooChoice, fit: BoxFit.scaleDown,),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}