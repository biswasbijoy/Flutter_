import 'dart:html';

import 'package:flutter/material.dart';
import 'package:interesting_place_in_world/place_screen.dart';

import 'country_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List<Country> _country = [];

    _country.add(Country(
      name: "Bangladesh",
      capital: "Dhaka",
      population: 18.05,
      place: [Place(
        placeName: "Jaflong",
        placeImage: 'https://thumbs.dreamstime.com/b/river-mountain-natural-view-jaflong-sylhet-bangladesh-196538627.jpg',
      ),
      Place(placeName: "Ratargul", 
      placeImage: 'https://upload.wikimedia.org/wikipedia/commons/9/9d/Ratargul_swamp_forest_Sylhet.jpg'),
      Place(placeName: "Vulagonj",
      placeImage: 'https://live.staticflickr.com/1843/43729130935_40dcc105c7_b.jpg')
      ],
      flag: 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f9/Flag_of_Bangladesh.svg/1200px-Flag_of_Bangladesh.svg.png'));
    

    _country.add(Country(
      name: "Bangladesh",
      capital: "Dhaka",
      population: 18.05,
      place: [Place(
        placeName: "Jaflong",
        placeImage: 'https://thumbs.dreamstime.com/b/river-mountain-natural-view-jaflong-sylhet-bangladesh-196538627.jpg',
      ),
      Place(placeName: "Ratargul", 
      placeImage: 'https://upload.wikimedia.org/wikipedia/commons/9/9d/Ratargul_swamp_forest_Sylhet.jpg')],
      flag: 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f9/Flag_of_Bangladesh.svg/1200px-Flag_of_Bangladesh.svg.png'));
    return Scaffold(
      //backgroundColor: Colors.yellowAccent[100],
      appBar: AppBar(
        title: Text('Country List'),
      ),
      body: GridView.builder(
        scrollDirection: Axis.horizontal,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemCount: 12,
        itemBuilder: (context,index)=>Card(
          child: GestureDetector(
            onTap: () {
              debugPrint(index.toString());
            },
            child: GridTile(
              child: Text('Hello')
              ),
          )
          )
        ),
    );
  }
}