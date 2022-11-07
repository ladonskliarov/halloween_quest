class Film {
  String title;
  String banner;
  String description;
  String link;

  Film({required this.title, required this.banner, required this.description, required this.link});
}

List<Film> films = [
  Film(
      title: 'Зомбіленд 2',
      banner: 'assets/images/films_photos/zombiland_banner.png',
      description: 'Дуже прикольна комедія. Ніби новий подих старих голивудських сімейок але додаючи зомбі',
      link: 'https://eneyida.tv/1265-zombilend-podviynyy-postril.html'
  ),
  Film(
      title: 'Апостол',
      banner: 'assets/images/films_photos/apostol_banner.jpg',
      description: 'Зовсім не те про що ви чули, це було знайдено випадково, але має дуже оригіналу та моторошну атмосферу, якої немає більше ніде, крута картина.',
      link: 'https://gidonline.io/film/apostol/'
  ),
  Film(
      title: 'Хеллбой',
      banner: 'assets/images/films_photos/hellboy_banner.jpg',
      description: 'Класика, напевно ви це вже дивились, а може ні. Но пригадаємо, що існує дуже крутий монстро-бойовик, який напевно надзвичайно крутіший за всіх конкурентів, тому що до нього хочеться повертатисть як до класики.',
      link: 'https://uakino.club/filmy/genre-action/472-hellboy.html'
  ),
  Film(
      title: 'Коралін у світі кошмарів',
      banner: 'assets/images/films_photos/coraline_banner.jpg',
      description: 'Реально прикольненька атмфосфера, має психологічні сенси, раджу дивитись якщо не бачили, якщо бачили то до варіантів вище. Якщо б була серія частин цього мульфільму, то її було б цікаво подивитись.',
      link: 'https://eneyida.tv/4889-koralina-u-sviti-koshmariv.html'
  ),
];