class Promotion {
  final String backgroundImagePath,
      title,
      tag,
      imagePath,
      caption,
      subtitle,
      imgtren;
  final bool reversegradient;
  Promotion(
      {this.backgroundImagePath,
      this.caption,
      this.imgtren,
      this.imagePath,
      this.reversegradient,
      this.subtitle,
      this.tag,
      this.title});
}

List<Promotion> promotions = [
  Promotion(
      imgtren: "assets/images/image1.png",
      backgroundImagePath: "assets/images/splash1.png",
      reversegradient: false,
      title: 'All Item Furniture\nDiscount Up to',
      subtitle: '50%',
      tag: "30 April 2019",
      imagePath: "assets/images/furniture1.png"),
  Promotion(
      backgroundImagePath: "assets/images/splash2.png",
      reversegradient: true,
      title: 'Get Voucher gift',
      subtitle: '\$50.00',
      imgtren: "assets/images/image6.png",
      caption: '*for new menber\'s\nof Furniture Shop')
];
