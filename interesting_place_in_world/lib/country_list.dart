class Country {
  String name;
  String capital;
  double population;
  List<Place> place = [];
  String flag;

  Country({
    required this.name,
    required this.capital,
    required this.population,
    required this.place,
    required this.flag,
  });
}

class Place {
  String placeName;
  String placeImage;


  Place({
    required this.placeName,
    required this.placeImage,
  });
}