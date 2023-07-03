class Book {
  final String title;
  final String authorName;
  final String image;
  final int complate;
  final int price;

  Book({
    required this.title,
    required this.authorName,
    required this.image,
    this.complate = 43,
     this.price = 34
  });
}
