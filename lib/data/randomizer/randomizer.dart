import 'dart:math';

class Randomizer {
  randomBodyChoice(List<String> bodyList){}
  randomTattooChoice(List<String> tattooList){}
}

class RandomizerImplementation implements Randomizer {

  @override
  String randomBodyChoice(List<String> bodyList){
    var random = Random();
    return bodyList[random.nextInt(bodyList.length)];
  }

  @override
  String randomTattooChoice(List<String> tattooList){
    var random = Random();
    int randomNumber = random.nextInt(tattooList.length);
    String result = tattooList[randomNumber];
    tattooList.removeAt(randomNumber);
    return result;
  }
}