class Living {
  final String name, imagePath;
  final int discountPercent, orginalPrice;
  final double rating;
  Living(
      {this.discountPercent,
      this.imagePath,
      this.name,
      this.rating,
      this.orginalPrice});
}

List<Living> livings = [
  Living(
      name: "Chair Dacey li - Black",
      imagePath: "assets/images/dacey.png",
      orginalPrice: 80,
      rating: 4.5,
      discountPercent: 30),
  Living(
      name: "Elly Sofa Patchwork",
      imagePath: "assets/images/elly.png",
      orginalPrice: 140,
      rating: 4.4,
      discountPercent: 30),
  Living(
      name: "Dobson Table - White",
      imagePath: "assets/images/table2.png",
      orginalPrice: 160,
      rating: 4.3,
      discountPercent: 25),
  Living(
      name: "Nagano Table - Brown",
      imagePath: "assets/images/table1.png",
      orginalPrice: 140,
      rating: 4.5,
      discountPercent: 20),
  Living(
      name: "Chair Dacey li - White",
      imagePath: "assets/images/chair2.png",
      orginalPrice: 140,
      rating: 4.5,
      discountPercent: 30),
  Living(
      name: "Chair Dacey li - Feather Grey",
      imagePath: "assets/images/chair3.png",
      orginalPrice: 80,
      rating: 4.0,
      discountPercent: 20)
];
