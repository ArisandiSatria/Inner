class Houses {
  String name;
  String imageAsset;
  int price;
  String location;
  String province;
  Map facilities;

  Houses({
    required this.name,
    required this.imageAsset,
    required this.price,
    required this.location,
    required this.province,
    required this.facilities,
  });
}

var housesList = [
  Houses(
      name: 'Classic Hut',
      imageAsset: 'assets/images/classic-hut.png',
      price: 20,
      province: 'Jakarta',
      location: 'Jln. Timur No. 10',
      facilities: {'kitchen': 1, 'bedroom': 1, 'cupboard': 1}),
  Houses(
      name: 'Office Like',
      imageAsset: 'assets/images/office-like.png',
      price: 30,
      province: 'Depok',
      location: 'Jln. Barat No. 3',
      facilities: {'kitchen': 2, 'bedroom': 2, 'cupboard': 2}),
  Houses(
      name: 'Orange Section',
      imageAsset: 'assets/images/orange-section.png',
      price: 15,
      province: 'Tangerang',
      location: 'Jln. Utara No. 7',
      facilities: {'kitchen': 1, 'bedroom': 1, 'cupboard': 1}),
  Houses(
      name: 'Sahara Home',
      imageAsset: 'assets/images/sahara-home.png',
      price: 14,
      province: 'Bekasi',
      location: 'Jln. Barat No. 1',
      facilities: {'kitchen': 1, 'bedroom': 2, 'cupboard': 1}),
  Houses(
      name: 'Transparent',
      imageAsset: 'assets/images/transparent-house.png',
      price: 50,
      province: 'Malang',
      location: 'Jln. Selatan No. 10',
      facilities: {'kitchen': 2, 'bedroom': 2, 'cupboard': 3}),
];
