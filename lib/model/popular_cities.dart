class PopularCities {
  String name;
  String imageAsset;

  PopularCities({
    required this.name,
    required this.imageAsset,
  });
}

var popularCitiesList = [
  PopularCities(
      name: 'Jakarta', imageAsset: 'assets/images/cities/jakarta.png'),
  PopularCities(
      name: 'Bandung', imageAsset: 'assets/images/cities/bandung.png'),
  PopularCities(name: 'Bogor', imageAsset: 'assets/images/cities/bogor.png'),
  PopularCities(
      name: 'Surabaya', imageAsset: 'assets/images/cities/surabaya.png'),
  PopularCities(
      name: 'Palembang', imageAsset: 'assets/images/cities/palembang.png'),
  PopularCities(name: 'Aceh', imageAsset: 'assets/images/cities/aceh.png'),
];
