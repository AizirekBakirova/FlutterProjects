class TitleModel {
  final String numbers;
  final String titleText;

  TitleModel({required this.numbers, required this.titleText});
}

TitleModel t1 = TitleModel(numbers: '1', titleText: 'Lifestyle');
TitleModel t2 = TitleModel(numbers: '2', titleText: 'Sport');
TitleModel t3 = TitleModel(numbers: '3', titleText: 'Design');
TitleModel t4 = TitleModel(numbers: '4', titleText: 'Politics');
TitleModel t5 = TitleModel(numbers: '5', titleText: 'Hi Tech');
TitleModel t6 = TitleModel(numbers: '6', titleText: 'Animals');
TitleModel t7 = TitleModel(numbers: '7', titleText: 'Natire');
List<TitleModel> titleList = [t1, t2, t3, t4, t5, t6, t7];
