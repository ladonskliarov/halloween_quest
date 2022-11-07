import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:halloween_yulia/domain/blocs/tattoos_bloc/tattoos_bloc.dart';

class TattooModeRadio extends StatefulWidget {

  @override
  State<TattooModeRadio> createState() => _TattooModeRadioState();
}

class _TattooModeRadioState extends State<TattooModeRadio> {
  int _value = 1;

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DecoratedBox(
            decoration: BoxDecoration(color: Colors.orange, borderRadius: BorderRadius.circular(20)),
            child: SizedBox(
              child: Row(
                children: [
                  Radio(
                      activeColor: Colors.black,
                      value: 1,
                      groupValue: _value,
                      onChanged: (value) {
                        BlocProvider.of<TattoosBloc>(context).add(CoupleModeEvent());
                        setState(() {
                          _value = value!;
                        });
                      }
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text('Пара'),
                  ),
                  Radio(
                      activeColor: Colors.black,
                      value: 2,
                      groupValue: _value,
                      onChanged: (value) {
                        BlocProvider.of<TattoosBloc>(context).add(FriendsModeEvent());
                        setState(() {
                          _value = value!;
                        });
                      }
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text('Друзі'),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}