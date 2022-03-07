class Furniture {
  final String title, iconData;

  Furniture({
    this.iconData,
    this.title,
  });
}

List<Furniture> furnitures = [
  Furniture(iconData: 'assets/icons/chest.svg', title: 'Living Room'),
  Furniture(iconData: 'assets/icons/bathtub.svg', title: 'Bathroom'),
  Furniture(iconData: 'assets/icons/desk.svg', title: 'Workspace')
];
