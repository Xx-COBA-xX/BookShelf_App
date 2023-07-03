class OnBoardingData {
  final String title;
  final String description;
  final String image;

  OnBoardingData({
    required this.title,
    required this.description,
    required this.image,
  });
}

List<OnBoardingData> myOnBoardingData = [
  OnBoardingData(
    title: "Bookmark",
    description: "Never lose track of your reading progress again! Our bookshelf app lets you mark, save, and resume your books with ease.",
    image: "assets/animated/onpoarding_1.json",
  ),
  OnBoardingData(
    title: "Reading Community",
    description: "Share your book recommendations, reviews, and literary journeys with a community of avid readers on our interactive bookshelf application.",
    image: "assets/animated/onpoarding_2.json",
  ),
  OnBoardingData(
    title: "Progress view",
    description: "Get a comprehensive overview of your reading journey with our bookshelf app's progress view, displaying the number of books finished and the average reading speed.",
    image: "assets/animated/onpoarding_3.json",
  ),

];
