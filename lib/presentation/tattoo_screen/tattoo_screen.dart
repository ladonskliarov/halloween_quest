import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:halloween_yulia/data/randomizer/randomizer.dart';
import 'package:halloween_yulia/domain/blocs/tattoos_bloc/tattoos_bloc.dart';
import 'package:halloween_yulia/presentation/sosages_screen/sosages_screen.dart';
import 'package:halloween_yulia/presentation/tattoo_screen/tattoo_mode_ratio.dart';
import 'package:halloween_yulia/presentation/tattoo_screen/tattoo_random.dart';
import 'package:halloween_yulia/presentation/web_phone_optimizer/web_phone_optimizer.dart';

class TattooScreen extends StatefulWidget {
  const TattooScreen({super.key});


  @override
  State<TattooScreen> createState() => _TattooScreenState();
}

class _TattooScreenState extends State<TattooScreen> {

  @override
  Widget build(BuildContext context){
    print('build');
    return WebPhoneOptimizer(
      child: RepositoryProvider(
        create: (context) => RandomizerImplementation(),
          child: BlocProvider(
            create: (context) => TattoosBloc(randomizer: RepositoryProvider.of<RandomizerImplementation>(context)),
              child: Material(
                textStyle: const TextStyle(fontFamily: 'Old', fontSize: 16, color: Colors.black, fontWeight: FontWeight.w700,),
                child: Stack(
                  children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset('assets/images/background_photos/tattoo_background.jpg', fit: BoxFit.fill,),
                  ),
                  BlocBuilder<TattoosBloc, TattoosState>(
                  builder: (context, state) {
                    if(state is TattooStateInitial) {
                    return SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        child: Center(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const SizedBox(height: 50,),
                              const Text('Маскування', style: TextStyle(fontFamily: 'Rubik', color: Colors.green, fontSize: 35),),
                              const SizedBox(height: 10,),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 10.0),
                                child: Container(
                                  decoration: BoxDecoration(color: Colors.orange, borderRadius: BorderRadius.circular(20), border: Border.all(color: Colors.black)),
                                  margin: const EdgeInsets.symmetric(horizontal: 10),
                                  padding: const EdgeInsets.all(10),
                                  child: const Text('Щоб пройти ворота, необхідно замаскуватись. Пари ліплять один одному, друзі кожен собі.\n\nВ залежності від відповіді нижче, ми підберемо маскування.',
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                              TattooModeRadio(),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
                                  onPressed: () {
                                    BlocProvider.of<TattoosBloc>(context).add(ConfirmGameModeEvent(bodyListName: BlocProvider.of<TattoosBloc>(context).bodyTypeList));
                                    //setState(() {});
                                  },
                                  child: const Text('Готові', style: TextStyle(fontFamily: 'Old', fontSize: 20),)
                              ),
                            ],
                          ),
                        ),
                      );
                    } else if (state is ConfirmedModeGameState && state.tattooList.isNotEmpty){
                      return TattooRandom(state: state);
                    } else if(state is ConfirmedModeGameState){
                      return SizedBox(
                        width: double.infinity,
                        height: double.infinity,
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(top: 20.0, bottom: 80.0),
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(color: Colors.transparent),
                                    child: SizedBox(
                                        child: Padding(
                                          padding: EdgeInsets.all(10.0),
                                          child: Text('Красунчики)', textAlign: TextAlign.center, style: TextStyle(fontFamily: 'Rubik', fontSize: 30, color: Colors.white),),
                                        )
                                    ),
                                  ),
                                ),
                                Image.network('https://media.giphy.com/media/iDBsleo3SvzWkrr7Q7/giphy.gif?cid=ecf05e47hukb1gqi1x2rs8hn6i10dltgey6ajl25dn3jpm2g&rid=giphy.gif&ct=g'),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => SosagesScreen()));
                                    },
                                    child: DecoratedBox(
                                      decoration: BoxDecoration(color: Colors.orange, borderRadius: BorderRadius.circular(20), border: Border.all(color: Colors.black)),
                                      child: const SizedBox(
                                          child: Padding(
                                            padding: EdgeInsets.all(15.0),
                                            child: Text('Перейти на територію дворця', style: TextStyle(fontFamily: 'Old', fontSize: 20),),
                                          )
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }
                    return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  )
                ],
              ),
          ),
      ),
      ),
    );
  }
}