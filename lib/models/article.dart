class Article {
  int id;
  String title;
  DateTime date;
  List<Map<String,String>> articleItems;

  Article({
    required this.id,
    required this.title,
    required this.date,
    required this.articleItems,
  });
}