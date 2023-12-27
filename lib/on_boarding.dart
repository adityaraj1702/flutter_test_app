class OnBoardingEntity{
  final String title;
  final String discription;
  final String image;

  OnBoardingEntity({
    required this.title,
    required this.discription,
    required this.image,
  });

   static List<OnBoardingEntity> onBoardingData = [
    OnBoardingEntity(
      title: "Order Your Wish",
      discription: "You can order everything,\nyou love to eat.",
      image: "food1.jpg"
    ),
    OnBoardingEntity(
      title: "Hot and Spicy",
      discription: "Order hot and spicy,\nFood with happiness.",
      image: "food2.jpg"
    ),
    OnBoardingEntity(
      title: "Dal Makhni",
      discription: "Order BEST food,\nand Enjoy.",
      image: "food3.jpg"
    ),
  ];
}