class BoardingModel {
  final String? image;
  final String? title;
  final String? body;
  final num? sizedHheight;

  BoardingModel({
    required this.image,
    required this.title,
    required this.body,
    required this.sizedHheight,
  });

 static final List<BoardingModel> boardingList = [
    BoardingModel(
     // image: 'assets/images/beach.webp',
      image: 'assets/images/beach-sea-18378306.webp',
      title: 'Now you Can Exchange\nYour Vacation',
      body:
          'Real Vacation Exchange Welcomes you and\nthanks for choosing our company,which is\nconsidered one of the largest privately owned\ncompanies in the region for exchanging\nholidays .',
          sizedHheight: 0.045,
    ),
    BoardingModel(
      image: 'assets/images/2.jpeg',
      title: 'Privacy',
      body:
          'Make Sure that we have very high privacy and\nenough control to satisfy you',
           sizedHheight:  0.15,
    ),
    BoardingModel(
      image: 'assets/images/3.jpg',
      title: 'Apartment Online Change',
      body:
          'You do not have to be alone because you have\nthe ability to change it whenever you want',
           sizedHheight:  0.15,
    ),
    BoardingModel(
      image: 'assets/images/1.png',
      title: 'Online Booking',
      body:
          'Make reservations online now through our\napplication easily and quickly',
           sizedHheight:  0.15,
    ),
  ];
}