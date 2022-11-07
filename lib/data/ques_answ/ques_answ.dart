import 'package:flutter/material.dart';

class Answer {
  String text;
  Color color;
  Answer({required this.color, required this.text});
}

class Question {
  String question;
  String? gif;
  Question({required this.question, this.gif});
}

Map<Question, List<Answer>> questions = {
  Question(question: '''Батько римський Генріх 4 проголосив що 1 листопада буде день усіх святих, то і з’явилося передпразденство за вечір до нього - «Hallowe'en», але він має повну назву, вгадай яку?''',): [
    Answer(color: Colors.green, text: '«All Hallows Even»'),
    Answer(color: Colors.red, text: '«Hallway Between»'),
    Answer(color: Colors.red, text: '«Want concert Queen!»')
  ],

  Question(question: '''Скільки дітей було у сімейки Адамс?''') : [
    Answer(color: Colors.green, text: '3, якщо рахувати руку'),
    Answer(color: Colors.red, text: '3'),
    Answer(color: Colors.red, text: '1')
  ],

  Question(question: '''Яку назву має тиква на Хеллоуїн?''') : [
    Answer(color: Colors.red, text: 'Тиква'),
    Answer(color: Colors.green, text: 'Джек'),
    Answer(color: Colors.red, text: 'Майк')
  ],

  Question(question: '''Слова які проговорюють на Хеллоуїн?''') : [
    Answer(color: Colors.red, text: 'Хто не скаче - той москаль'),
    Answer(color: Colors.red, text: 'Монстрів ніч - святий день'),
    Answer(color: Colors.green, text: 'Конфети або життя')
  ],

    Question(question: '''Яку назву має серіал на зображенні?''', gif: 'https://media.giphy.com/media/u8vTGiGwCrGSY/giphy.gif?cid=ecf05e4718484q6a56sy9l4cd3c8nii3pwns6sj2hsil8h7s&rid=giphy.gif&ct=g') : [
    Answer(color: Colors.red, text: 'Погані копи'),
    Answer(color: Colors.green, text: 'Надприродне'),
    Answer(color: Colors.red, text: 'Браття Грімм'),
    Answer(color: Colors.red, text: 'Вінчестери'),
  ],

  Question(question: '''Скільки вчителів темної магії було у Гаррі Поттері?''') : [
    Answer(color: Colors.red, text: '5'),
    Answer(color: Colors.red, text: '7'),
    Answer(color: Colors.green, text: '6'),
  ],

  Question(question: '''Хто зображений тут?''', gif: 'https://media.giphy.com/media/6vzUR9dWanDRC/giphy.gif?cid=ecf05e47ex1rvs3niotosjtvc1711omdh3civ9dhu327ffwk&rid=giphy.gif&ct=g') : [
    Answer(color: Colors.red, text: 'Професор Люпін'),
    Answer(color: Colors.green, text: 'Сіріус Блек'),
    Answer(color: Colors.red, text: 'Іоган Штраус'),
    Answer(color: Colors.red, text: 'Корень Мандрогори'),
  ],

  Question(question: '''А це хто?''', gif: 'https://media.giphy.com/media/RaTAFdOkxs0X6/giphy.gif?cid=ecf05e47ol67hy1a7dfjbnxzcz9k1moruq6sktja5z4s0dnb&rid=giphy.gif&ct=g') : [
    Answer(color: Colors.green, text: 'Доббі'),
    Answer(color: Colors.red, text: 'Гном'),
    Answer(color: Colors.red, text: 'Ленні'),
  ],

  Question(question: '''Як називається ця книга?''', gif: 'https://media.giphy.com/media/m0iR1jOuBIC9a/giphy.gif?cid=ecf05e47sbymj9vdc8vervscf4ox6ii1l1wstqoj4w0cppku&rid=giphy.gif&ct=g') : [
    Answer(color: Colors.red, text: 'Хижа книга'),
    Answer(color: Colors.red, text: 'Дика книга'),
    Answer(color: Colors.green, text: 'Книга Монстрів'),
    Answer(color: Colors.red, text: 'Книга вищмата'),
  ],

  Question(question: '''Одного дня пастух рахував коз, але втікла одна коза, це була?''', gif: 'https://media.giphy.com/media/4X4WQnrDdOcOk/giphy.gif?cid=ecf05e477fwgkfxbro7dedlerooo3pv8ywqcflndxczbucso&rid=giphy.gif&ct=g') : [
    Answer(color: Colors.red, text: 'Професор Макгонагл'),
    Answer(color: Colors.red, text: 'Бетті'),
    Answer(color: Colors.green, text: 'Доллорас Амбрідж'),
  ],

  Question(question: '''Як звуть цих істот?''', gif: 'https://media.giphy.com/media/QUFOAUoRwwbrqITX2S/giphy.gif?cid=ecf05e47qs21ln8g9zwimnoufymvutyw2ob85v66zp6m1axw&rid=giphy.gif&ct=g') : [
    Answer(color: Colors.red, text: 'Веприки'),
    Answer(color: Colors.green, text: 'Піксі'),
    Answer(color: Colors.red, text: 'Зубні феї'),
    Answer(color: Colors.red, text: 'Тулі'),
  ],

  Question(question: '''Назва цього мультфільму?''', gif: 'https://media.giphy.com/media/8XaIVKmcWKavC/giphy.gif?cid=ecf05e47l1cjn1n14wbx3kdxignuqtozfx2lsy5sdlagcqzt&rid=giphy.gif&ct=g') : [
    Answer(color: Colors.green, text: 'Хелловін'),
    Answer(color: Colors.red, text: 'День усіх Святих'),
    Answer(color: Colors.red, text: 'Кошмарні історії'),
    Answer(color: Colors.red, text: 'Покемон'),
  ],

  Question(question: '''З якого фільму ці кадри?''', gif: 'https://media.giphy.com/media/Qw4X3FOknVexRVd1j5m/giphy.gif?cid=ecf05e47z82firqix98qbnus4a3aid1yrsd8rrlwqb9kyepu&rid=giphy.gif&ct=g') : [
    Answer(color: Colors.red, text: 'Турок'),
    Answer(color: Colors.red, text: 'Виживання на острові'),
    Answer(color: Colors.green, text: 'Парк Юрського періоду'),
    Answer(color: Colors.red, text: 'Чого бажають жінки'),
  ],

  Question(question: '''Як звуть цю істоту?''', gif: 'https://media.giphy.com/media/V4uGHRgz0zi6Y/giphy.gif?cid=ecf05e47h60wyp4vsvp9im7fkr1iuyskp4iuni4vgc9l6d8l&rid=giphy.gif&ct=g') : [
    Answer(color: Colors.red, text: 'Веприк'),
    Answer(color: Colors.green, text: 'Голум'),
    Answer(color: Colors.red, text: 'Один з відвідувачей пенсійного фонду'),
    Answer(color: Colors.red, text: 'Служба з повернення товару'),
  ],

  Question(question: '''Як звати цього героя?''', gif: 'https://media.giphy.com/media/EtH3A45sJ21qM/giphy.gif?cid=ecf05e47byxypu0z506nzmwv5jn0bvotooboix52vqb3yekp&rid=giphy.gif&ct=g') : [
    Answer(color: Colors.red, text: 'Білий хлопчик'),
    Answer(color: Colors.red, text: 'Привид Різдва'),
    Answer(color: Colors.green, text: 'Каспер'),
    Answer(color: Colors.red, text: 'Мантія невидимка'),
  ],

  Question(question: '''Хто зображений на цьому кадрі?''', gif: 'https://media.giphy.com/media/barvvy6Ta8kjm/giphy.gif?cid=ecf05e47jvxzzbgp0u1b24gw489qe3g5ac16u9vd5cqo6wf7&rid=giphy.gif&ct=g') : [
    Answer(color: Colors.red, text: 'Вулиця Хелловін'),
    Answer(color: Colors.red, text: 'Вільямси'),
    Answer(color: Colors.red, text: 'Сімейка Андерс'),
    Answer(color: Colors.green, text: 'Сімейка Адамс'),
  ],

  Question(question: '''З якого фільму ці красені?''', gif: 'https://media.giphy.com/media/JmqRyUiUhienS/giphy.gif?cid=ecf05e47tpccu4uezwve35crtbca2wgi4blkrvkrkixtz6dl&rid=giphy.gif&ct=g') : [
    Answer(color: Colors.red, text: 'Диявол'),
    Answer(color: Colors.green, text: 'Хеллбой'),
    Answer(color: Colors.red, text: 'Красний череп'),
    Answer(color: Colors.red, text: 'Сімейка Адамс'),
  ],

  Question(question: '''Назва цього фільму?''', gif: 'https://media.giphy.com/media/vppfBcl2vrsek/giphy.gif?cid=ecf05e47xxs0xzhiazdpvibesfekgf4yebmcqk9lr5sszeov&rid=giphy.gif&ct=g') : [
    Answer(color: Colors.red, text: 'Прокляття Анабель'),
    Answer(color: Colors.red, text: 'Закляття'),
    Answer(color: Colors.green, text: 'Астрал'),
    Answer(color: Colors.red, text: 'Сіністер'),
  ],

  Question(question: '''Що це за істота?''', gif: 'https://media.giphy.com/media/SkgrVkyTFdyW6d0ByG/giphy.gif?cid=ecf05e47pj9rxqu952bvpxbdsx84rx6wwhgvmr5feui988ec&rid=giphy.gif&ct=g') : [
    Answer(color: Colors.green, text: 'Перевертень'),
    Answer(color: Colors.red, text: 'Волк'),
    Answer(color: Colors.red, text: 'Темний волк'),
    Answer(color: Colors.red, text: 'Жеводанський звір'),
  ],

  Question(question: '''Як назвали цього маленького монстра?''', gif: 'https://media.giphy.com/media/l0ErCoZXcXKy0mwqA/giphy.gif?cid=ecf05e47jllcjjdash31llbt7gq707a5z9k3ocdt7m20j9nu&rid=giphy.gif&ct=g') : [
    Answer(color: Colors.red, text: 'Лі'),
    Answer(color: Colors.red, text: 'Зої'),
    Answer(color: Colors.green, text: 'Бу'),
    Answer(color: Colors.red, text: 'Софі'),
  ],

  Question(question: '''Найпривабливіша рубрика цирку Гомеза?''', gif: 'https://media.giphy.com/media/kTZBUjdRlZB3G/giphy.gif?cid=ecf05e472p34k4kq3722serigcgc6wavck371wep01rdxoim&rid=giphy.gif&ct=g') : [
    Answer(color: Colors.red, text: 'Вусолапохвіст'),
    Answer(color: Colors.red, text: 'Кільця зі львами'),
    Answer(color: Colors.green, text: 'Рибадупакінь'),
    Answer(color: Colors.red, text: 'Морські котики'),
  ],

  Question(question: '''Ім'я цього крутого хлопця?''', gif: 'https://media.giphy.com/media/3oEdv1mkVpB4EyLoD6/giphy.gif?cid=ecf05e4733g5r9wb45yqac516lxut86jjxko7cij6ns7mq6t&rid=giphy.gif&ct=g') : [
    Answer(color: Colors.red, text: 'Неділя'),
    Answer(color: Colors.green, text: 'Блейд'),
    Answer(color: Colors.red, text: 'Кейдж'),
    Answer(color: Colors.red, text: 'Сарман'),
  ],
};

class ConcourseResult {
  String? text;
  String? gif;
  ConcourseResult({required this.gif, required this.text});
}

Map<int, ConcourseResult> result = {
  20 : ConcourseResult(
      text: 'Сталося враження що ви реальний Хеллбой але ще б трохи.',
      gif: 'https://media.giphy.com/media/YvaNQ75UCOJjy/giphy.gif?cid=ecf05e47wrjkgkchr71re3pg5wal2hpjmorygxqa1kkqo56i&rid=giphy.gif&ct=g'
  ),
  21 : ConcourseResult(
      text: 'Практично перемогли. Ви як справжні Вінчестери.',
      gif: 'https://media.giphy.com/media/o4KN6logMhiYU/giphy.gif?cid=ecf05e47f84u475npm2p34n1hux8uwxn1bvpm72o7kl3tthi&rid=giphy.gif&ct=g'
  ),
  22 : ConcourseResult(
      text: 'Ну, це абсолютна перемога. З вами хоч в 10 дворців.',
      gif: 'https://media.giphy.com/media/iHTRo3hYZGhZS/giphy.gif?cid=ecf05e471ae9830tqp2d3z47vyr9zwzp249gmw2s4kp9pgbm&rid=giphy.gif&ct=g'
  ),
};