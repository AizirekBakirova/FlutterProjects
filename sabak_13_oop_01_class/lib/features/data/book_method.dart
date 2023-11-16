// kitepter uchun shablon
class Book {
  // polya
  final String bookName;
  final int pageNumber;
// kitepter uchun konstruktor
  const Book({required this.bookName, required this.pageNumber});
}

// kitepterdin atalyshy uchun ob`ekt
Book synganKylych = const Book(bookName: 'Syngan Kylych', pageNumber: 450);
// print('${synganKylych.bookName} ${synganKylych.pageNumber}');

Book birinchiMugalim = const Book(bookName: 'Time is Money', pageNumber: 560);
// print('${birinchiMugalim.bookName} ${birinchiMugalim.pageNumber}');
Book gulSarat = const Book(bookName: 'Gul Sarat', pageNumber: 350);
// print('${birinchiMugalim.bookName} ${birinchiMugalim.pageNumber}');
Book chyngyzhan = const Book(bookName: 'Chyngyz Han', pageNumber: 1045);
// print('${chyngyzhan.bookName} ${chyngyzhan.pageNumber}');
Book jamilya = const Book(bookName: 'Jamilya', pageNumber: 465);
// print('${jamilya.bookName} ${jamilya.pageNumber}');
Book akKeme = const Book(bookName: 'Ak keme', pageNumber: 678);
// print('${akKeme.bookName} ${akKeme.pageNumber}');
Book darkPsychology = const Book(bookName: 'Dark Psychology', pageNumber: 989);
Book energiyaIya = const Book(bookName: 'Energiya i Ya', pageNumber: 764);
Book maviUlke = const Book(bookName: 'Mavi Ulke', pageNumber: 356);
Book kSebeNejno = const Book(bookName: 'K sebe nejno', pageNumber: 897);
Book sToboiYaDoma = const Book(bookName: 'S toboi Ya doma', pageNumber: 454);
Book lyubi = const Book(bookName: 'Lyubi', pageNumber: 699);
Book howTosHealYourself =
    const Book(bookName: 'How To Heal Yourself', pageNumber: 568);
Book thinkAgain = const Book(bookName: 'Think Again', pageNumber: 345);
Book manipulation = const Book(bookName: 'Manipulation', pageNumber: 907);

//kitepterdin atalyshy uchun list
List<Book> bookList = [
  synganKylych,
  birinchiMugalim,
  gulSarat,
  chyngyzhan,
  jamilya,
  akKeme,
  darkPsychology,
  energiyaIya,
  maviUlke,
  kSebeNejno,
  sToboiYaDoma,
  lyubi,
  howTosHealYourself,
  thinkAgain,
  manipulation
];
