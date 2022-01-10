import 'package:flutter/material.dart';
import 'package:interesting_place_in_world/country_list.dart';

class PlacesScreen extends StatelessWidget {
  const PlacesScreen({ Key? key,required this.country }) : super(key: key);
  final Country country;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Interesting place for torist'),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(country.name),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: country.place.length,
              itemBuilder: (context,index) => Container(
              child: Image(image: NetworkImage(country.place[index].placeImage)),
            ))
          ],
        ),
      ),
    );
  }
}